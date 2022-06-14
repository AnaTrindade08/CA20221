//Programa para converter Hexadecimal para Data - Protocolo Hart
//Autor: Eliel Prado
//A data é representada por: DDMMYY-1900

import 'dart:core';
import 'package:intl/intl.dart';

void main() {
  print('Hello World');
  String hex = '62A809';
  hrtTypeHex2Date(hex);
}

hrtTypeHex2Date(String strHex) {
  //this function converts a hexadecimal string to a date
  //the date is represented by: DDMMYY-1900
  print(strHex.length);
  if (strHex.length != 6) {
    print("String Invalida");
    return -1;
  }
  //convert the string to a list of bytes
  List<int> bytes = strHex.codeUnits;
  print(bytes.length);
  //convert the list of bytes to a list of integers
  List<int> ints = new List<int>.empty(growable: true);
  for (int i = 0; i < bytes.length; i++) {
    ints.add(bytes[i]);
  }
  //convert the list of integers to a list of strings
  List<String> strs = new List<String>.empty(growable: true);
  for (int i = 0; i < ints.length; i++) {
    strs.add(ints[i].toRadixString(16));
  }
  //convert the list of strings to a string
  String str = strs.join();

  //convert the string to a date
  DateTime date = DateTime.parse(str);
  //convert the date to a string
  String strDate = DateFormat('ddMMyy').format(date);
  //print the date
  print(strDate);
}
