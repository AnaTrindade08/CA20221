void main() {
  //tests
  print(hrtTypeInt2Hex(250));
  print(hrtTypeInt2Hex(400));
  print(hrtTypeInt2Hex(400));
}

String hrtTypeInt2Hex(int value) {
  final hex = value.toRadixString(16);
  final size = 4 - hex.length; // Complementa os dígitos faltantes com zero
  if (value > 65535) throw ArgumentError("Valor acima do permitido");
  return ('0' * size + hex).toUpperCase();
}
