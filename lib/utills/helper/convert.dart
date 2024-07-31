import 'package:intl/intl.dart';

class Convert {
  static String formatRupiah(double number) {
    final rupiahFormat =
        NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ', decimalDigits: 0);
    String angkaDalamRupiah = rupiahFormat.format(number);
    return angkaDalamRupiah;
  }

  static String removeFormatRupiah(String rupiah) {
    return rupiah.replaceAll('Rp ', '').replaceAll('.', '');
  }
}
