import 'dart:io';

void main(){
  int duracao = int.parse(stdin.readLineSync()!);
  final int horas = duracao ~/ 3600;
  duracao = duracao % 3600;
  final int minutos = duracao ~/ 60;
  duracao = duracao % 60;
  final int segundos = duracao;
  print("$horas:$minutos:$segundos");
}
