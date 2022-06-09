int hrtTypeHex2Int(String hex) {
  if (hex == '') return 0;

  hex = hex.replaceAll(' ', '');
  return int.parse(hex, radix: 16);
}

void main() {
  print(hrtTypeHex2Int('f'));
  print(hrtTypeHex2Int('ff ff ff'));
  print(hrtTypeHex2Int(''));
}
