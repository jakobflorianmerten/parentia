import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/meetup/application/blocs/new_meetup_bloc/new_meetup_bloc.dart';
import 'package:parentia/features/meetup/presentation/screens/modal_sheet.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class SelectDateWidget extends StatefulWidget {
  const SelectDateWidget({super.key});

  @override
  State<SelectDateWidget> createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {
  DateTime _selectedValue = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.paymentDate,
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
              initialSelectedDate: DateTime.now(),
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
                child: CustomClickedElement(
                  onPressed: () {
                    BlocProvider.of<NewMeetupBloc>(context).add(
                      NewMeetupEvent.selectedMeetupDate(_selectedValue),
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
            ],
          ),
        ],
      ),
    );
  }
}
