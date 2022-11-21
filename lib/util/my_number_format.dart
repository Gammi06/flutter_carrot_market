import 'package:intl/intl.dart';

String numberPriceKsFormat(String price) {
  final formatter = NumberFormat("#,###원"); // intl 사용법 정리하기
  return formatter.format(int.parse(price));
}
