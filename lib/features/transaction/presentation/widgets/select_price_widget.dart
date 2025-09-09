import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:parentia/core/presentation/widgets/custom_clicked_element.dart';
import 'package:parentia/core/presentation/widgets/flutter_helper_methods.dart';
import 'package:parentia/features/transaction/application/blocs/new_transaction_bloc/new_transaction_bloc.dart';
import 'package:parentia/features/transaction/presentation/screens/modal_sheet.dart';
import 'package:parentia/l10n/app_localizations.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class SelectPriceWidget extends StatefulWidget {
  const SelectPriceWidget({super.key});

  @override
  State<SelectPriceWidget> createState() => _SelectPriceWidgetState();
}

class _SelectPriceWidgetState extends State<SelectPriceWidget> {
  final _format = NumberFormat.currency(
    locale: 'de_DE',
    symbol: '€',
    decimalDigits: 2,
  );

  bool _isValid = false;

  final _formKey = GlobalKey<FormState>();
  final _focusNode = FocusNode();

  final _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Nach dem ersten Frame den Fokus aufs TextField setzen -> Tastatur öffnen
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    if (value.startsWith('0')) {
      _controller.clear();
      setState(() {
        _isValid = false;
      });
      return;
    }

    // raw := nur Ziffern, max. Länge 6 (cents)
    final raw = value;
    final cents = int.tryParse(raw) ?? 0;
    _isValid = cents > 0;
    setState(() {
      // display und Button-State updaten
    });
  }

  @override
  Widget build(BuildContext context) {
    // Text, der angezeigt wird
    final raw = _controller.text;
    final cents = int.tryParse(raw) ?? 0;
    final amount = cents / 100;
    final displayText = _format.format(amount);

    return Stack(
      children: [
        Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              addVerticalSpace(20),
              Container(
                alignment: Alignment.center,
                child: Text(
                  displayText,
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              ),
              Offstage(
                offstage: true,
                child: TextFormField(
                  controller: _controller,
                  focusNode: _focusNode,
                  autofocus: true,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[\d\.,]')),
                    LengthLimitingTextInputFormatter(6),
                  ],
                  validator: (_) {},
                  onChanged: _onChanged,
                ),
              ),
              addVerticalSpace(150),
            ],
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
                      final cents = int.parse(_controller.text);
                      final price = cents / 100;

                      BlocProvider.of<NewTransactionBloc>(context).add(
                        NewTransactionEvent.selectedTransactionPrice(price),
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
