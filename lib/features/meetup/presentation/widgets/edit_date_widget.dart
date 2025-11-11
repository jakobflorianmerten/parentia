import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/custom_toastmessages/message_service.dart';
import 'package:parentia/custom_toastmessages/overlay_widget.dart';
import 'package:parentia/features/meetup/application/blocs/meetup/meetup_bloc.dart';
import 'package:parentia/l10n/app_localizations.dart';

class EditDateWidget extends StatefulWidget {
  final String meetupId;
  final DateTime initialDate;
  final String currentDescription;

  const EditDateWidget({
    super.key,
    required this.meetupId,
    required this.initialDate,
    required this.currentDescription,
  });

  @override
  State<EditDateWidget> createState() => _EditDateWidgetState();
}

class _EditDateWidgetState extends State<EditDateWidget> {
  late DateTime _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MeetupBloc, MeetupState>(
      listener: (context, state) {
        if (state is MeetupStateSuccess && state.meetupId == widget.meetupId) {
          MessageService.show(
            title: AppLocalizations.of(context)!.success_meetupCreatedTitle,
            message: AppLocalizations.of(context)!.success_meetupCreatedDescription,
            type: MessageType.success,
          );
          Navigator.of(context).pop();
        } else if (state is MeetupStateError) {
          MessageService.show(
            title: AppLocalizations.of(context)!.error_defaultMessageTitle,
            message: AppLocalizations.of(context)!.error_defaultMessageDescription,
            type: MessageType.error,
          );
        }
      },
      builder: (context, state) {
        final isLoading = state is MeetupStateLoading && state.meetupId == widget.meetupId;

        return Container(
          padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.newMeetupDate,
                style: Theme.of(
                  context,
                ).textTheme.displayMedium!.copyWith(fontWeight: FontWeight.w500),
              ),
              addVerticalSpace(5),
              Text(
                AppLocalizations.of(context)!.paymentDateDescription,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              addVerticalSpace(20),
              SizedBox(
                height: 95,
                child: DatePicker(
                  DateTime.now(),
                  initialSelectedDate: widget.initialDate,
                  selectionColor: Theme.of(context).colorScheme.primary,
                  selectedTextColor: Colors.white,
                  dateTextStyle: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500),
                  monthTextStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(
                      context,
                    ).colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  dayTextStyle: Theme.of(context).textTheme.bodyMedium!,
                  onDateChange: (date) {
                    setState(() {
                      _selectedValue = date;
                    });
                  },
                ),
              ),
              addVerticalSpace(60),
              Row(
                children: [
                  Expanded(
                    child: CustomClickedElement(
                      onPressed: isLoading ? () {} : () {
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
                      opacity: isLoading ? 0.4 : 1,
                      child: CustomClickedElement(
                        onPressed: () {
                          if (isLoading) return;

                          BlocProvider.of<MeetupBloc>(context).add(
                            MeetupEvent.editMeetup(
                              widget.meetupId,
                              widget.currentDescription,
                              _selectedValue,
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
            ],
          ),
        );
      },
    );
  }
}
