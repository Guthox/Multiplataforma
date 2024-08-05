import 'dart:io';

void main(){
  final int numero = int.parse(stdin.readLineSync()!);
  final int horas = int.parse(stdin.readLineSync()!);
  final double porHora = double.parse(stdin.readLineSync()!);

  print("NUMBER = $numero");
  print("SALARY = U\$ ${(horas * porHora).toStringAsFixed(2)}");
}