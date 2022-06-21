String hrtTypeTime2Hex(String time) {
  final aux_string_time = time.split(':');
  String valor = (double.parse(aux_string_time[0]) * 112500000 +
          double.parse(aux_string_time[1]) * 1920000 +
          double.parse(aux_string_time[2]) * 320000 +
          double.parse(aux_string_time[3]) / 0.03125)
      .round()
      .toRadixString(2);
  print(valor);
  print(int.parse(valor.substring(0, 7), radix: 2)
          .toRadixString(16)
          .toUpperCase() +
      ' ' +
      int.parse(valor.substring(8, 15), radix: 2)
          .toRadixString(16)
          .toUpperCase() +
      ' ' +
      int.parse(valor.substring(16, 23), radix: 2)
          .toRadixString(16)
          .toUpperCase() +
      ' ' +
      int.parse(valor.substring(24, 31), radix: 2)
          .toRadixString(16)
          .toUpperCase());

  return valor;
}

void main() {
  hrtTypeTime2Hex('20:10:50:125');
}
