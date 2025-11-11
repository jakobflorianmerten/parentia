import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/meetup/application/blocs/meetup/meetup_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class EditDescriptionWidget extends StatefulWidget {
  final String meetupId;
  final String initialDescription;
  final DateTime currentDate;

  const EditDescriptionWidget({
    super.key,
    required this.meetupId,
    required this.initialDescription,
    required this.currentDate,
  });

  @override
  State<EditDescriptionWidget> createState() => _EditDescriptionWidgetState();
}

class _EditDescriptionWidgetState extends State<EditDescriptionWidget> {
  bool _isValid = false;

  final _formKey = GlobalKey<FormState>();
  final _focusNode = FocusNode();

  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialDescription);
    _isValid =
        widget.initialDescription.length >= 10 &&
        widget.initialDescription.length <= 1000;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    final length = value.length;
    final isValid = length >= 10 && length <= 1000;
    setState(() {
      _isValid = isValid;
    });
  }

  @override
  Widget build(BuildContext context) {
    final charCount = _controller.text.length;
    final charCountText = '$charCount/1000';
    final charCountColor = charCount < 10
        ? Colors.red
        : charCount > 1000
        ? Colors.red
        : Colors.green;

    return BlocConsumer<MeetupBloc, MeetupState>(
      listener: (context, state) {
        if (state is MeetupStateSuccess && state.meetupId == widget.meetupId) {
          MessageService.show(
            title: AppLocalizations.of(context)!.success_meetupCreatedTitle,
            message: AppLocalizations.of(
              context,
            )!.success_meetupCreatedDescription,
            type: MessageType.success,
          );
          Navigator.of(context).pop();
        } else if (state is MeetupStateError) {
          MessageService.show(
            title: AppLocalizations.of(context)!.error_defaultMessageTitle,
            message: AppLocalizations.of(
              context,
            )!.error_defaultMessageDescription,
            type: MessageType.error,
          );
        }
      },
      builder: (context, state) {
        final isLoading =
            state is MeetupStateLoading && state.meetupId == widget.meetupId;

        return Stack(
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    addVerticalSpace(20),
                    Text(
                      AppLocalizations.of(context)!.newDescription,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    addVerticalSpace(10),
                    TextFormField(
                      controller: _controller,
                      focusNode: _focusNode,
                      autofocus: true,
                      maxLines: 5,
                      maxLength: 1000,
                      enabled: !isLoading,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(
                          context,
                        )!.enterDescription,
                        hintStyle: TextStyle(
                          color: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.color?.withValues(alpha: 0.5),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        counterText: '',
                      ),
                      onChanged: _onChanged,
                    ),
                    addVerticalSpace(5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          charCount < 10
                              ? AppLocalizations.of(
                                  context,
                                )!.minimum10Characters
                              : '',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          charCountText,
                          style: TextStyle(
                            color: charCountColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    addVerticalSpace(95), // Space for buttons
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              left: 20,
              child: Row(
                children: [
                  Expanded(
                    child: CustomClickedElement(
                      onPressed: isLoading
                          ? () {}
                          : () {
                              Navigator.of(context).pop();
                            },
                      child: Container(
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.cancel,
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 55,
                      ),
                    ),
                  ),
                  addHorizontalSpace(15),
                  Expanded(
                    child: Opacity(
                      opacity: (_isValid && !isLoading) ? 1 : 0.4,
                      child: CustomClickedElement(
                        onPressed: () {
                          if (!_isValid || isLoading) return;

                          BlocProvider.of<MeetupBloc>(context).add(
                            MeetupEvent.editMeetup(
                              widget.meetupId,
                              _controller.text,
                              widget.currentDate,
                            ),
                          );
                        },
                        child: Container(
                          child: Center(
                            child: isLoading
                                ? SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Theme.of(context).colorScheme.onPrimary,
                                      ),
                                    ),
                                  )
                                : Text(
                                    AppLocalizations.of(context)!.saveChanges,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.displayMedium,
                                  ),
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 55,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
