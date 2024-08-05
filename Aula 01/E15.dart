import 'dart:io';

void main(){
  int? hora = null;
  print("Digite o horario de entrada: ");
  while (hora == null){
    try{
      hora = int.parse(stdin.readLineSync()!);
    }
    catch (e){
      print("Hora invalida.");
    } 
  }
  
  switch(hora){
    case >= 14 && <= 16:
      print("Estamos no horario do almoço.");
    case > 20 || < 8:
      print("Fechado.");
    default:
      print("Bem vindo");
  }
  
}