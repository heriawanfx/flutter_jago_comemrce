import 'package:money_formatter/money_formatter.dart';

extension PriceExtension on double {
  String formatPrice() {
    MoneyFormatter fmf = MoneyFormatter(
        amount: this,
        settings: MoneyFormatterSettings(
          symbol: 'IDR',
          thousandSeparator: '.',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 2,
        ));
    return fmf.output.symbolOnLeft;
  }
}
