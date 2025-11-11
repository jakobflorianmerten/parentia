import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/meetup/application/blocs/new_meetup_bloc/new_meetup_bloc.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';
import 'package:parentia/l10n/app_localizations.dart';

class SelectDescriptionWidget extends StatefulWidget {
  const SelectDescriptionWidget({super.key});

  @override
  State<SelectDescriptionWidget> createState() => _SelectDescriptionWidgetState();
}

class _SelectDescriptionWidgetState extends State<SelectDescriptionWidget> {
  bool _isValid = false;

  final _formKey = GlobalKey<FormState>();
  final _focusNode = FocusNode();

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
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
                  AppLocalizations.of(context)!.description,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                addVerticalSpace(10),
                TextFormField(
                  controller: _controller,
                  focusNode: _focusNode,
                  autofocus: true,
                  maxLines: 5,
                  maxLength: 1000,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.enterDescription,
                    hintStyle: TextStyle(
                      color: Theme.of(context).textTheme.bodyLarge?.color?.withValues(alpha: 0.5),
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
                          ? AppLocalizations.of(context)!.minimum10Characters
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
                addVerticalSpace(95), // Space for buttons (55px height + 20px margin + 20px gap)
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
                  onPressed: () {
                    modalSheetPageIndexNotifier.value--;
                  },
                  child: Container(
                    child: Center(
                      child: Text(
                        AppLocalizations.of(context)!.back,
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
                  opacity: _isValid ? 1 : 0.4,
                  child: CustomClickedElement(
                    onPressed: () {
                      if (_isValid == false) return;

                      BlocProvider.of<NewMeetupBloc>(context).add(
                        NewMeetupEvent.selectedDescription(_controller.text),
                      );
                      modalSheetPageIndexNotifier.value++;
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.next,
                          style: Theme.of(context).textTheme.displayMedium,
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
  }
}
