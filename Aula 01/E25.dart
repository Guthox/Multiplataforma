import 'dart:io';


void main(){

  int mes = 0;
  int dia = 0;

  while(mes == 0){
    print("Digite o número do mês de nascimento: ");
    try{
      mes = int.parse(stdin.readLineSync()!);
      if (mes <= 0 || mes > 12){
        mes = 0;
        print("Mês inválido");
      }
    }
    catch (e){
      mes = 0;
      print("Mês inválido");
    }
  }

  while(dia == 0){
    print("Digite o dia de nascimento: ");
    try{
      dia = int.parse(stdin.readLineSync()!);
      if (dia <= 0 || dia > 31){
        dia = 0;
        print("Dia inválido");
      }
    }
    catch (e){
      dia = 0;
      print("Dia inválido");
    }
  }
  String signo = "";
  switch(mes){
    case 1:
      if (dia <= 20) signo = "Capricórnio";
      else signo = "Aquário";
    case 2:
      if (dia <= 18) signo = "Aquário";
      else signo = "Peixes"; 
    case 3:
      if (dia <= 20) signo = "Peixes";
      else signo = "Áries";
    case 4:
      if (dia <= 21) signo = "Áries";
      else signo = "Touro";
    case 5:
      if (dia <= 21) signo = "Touro";
      else signo = "Gêmeos";
    case 6:
      if (dia <= 21) signo = "Gêmeos";
      else signo = "Câncer";
    case 7:
      if (dia <= 23) signo = "Câncer";
      else signo = "Leão";
    case 8:
      if (dia <= 23) signo = "Leão";
      else signo = "Virgem";
    case 9:
      if (dia <= 23) signo = "Virgem";
      else signo = "Libra";
    case 10:
      if (dia <= 23) signo = "Libra";
      else signo = "Escorpião";
    case 11:
      if (dia <= 22) signo = "Esorpião";
      else signo = "Sagitário";
    case 12:
      if (dia <= 22) signo = "Sagitário";
      else signo = "Capricórnio";
    default:
      signo = "Entrada inválida";
  }
  print(signo);

}