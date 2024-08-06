import "dart:io";

void main(){
  bool? duranteSemana = null;
  bool? temOutroEvento = null;
  String duranteSemanaStr = "";
  String temOutroEventoStr = "";

  while (duranteSemana == null){
    print("Essa data é durante a semana de trabalho? S/N");
    duranteSemanaStr = stdin.readLineSync()!;
    if (duranteSemanaStr.toUpperCase() == "S"){
      duranteSemana = true;
    }
    else if (duranteSemanaStr.toUpperCase() == "N"){
      duranteSemana = false;
    }
    else{
      print("Entrada inválida.");
    }
  }
  
  
  while (temOutroEvento == null){
    print("Tem outro evento nesta data? S/N");
    temOutroEventoStr = stdin.readLineSync()!;
    if (temOutroEventoStr.toUpperCase() == "S"){
      temOutroEvento = true;
    }
    else if (temOutroEventoStr.toUpperCase() == "N"){
      temOutroEvento = false;
    }
    else{
      print("Entrada inválida.");
    }
  }
  
  if (temOutroEvento || !duranteSemana){
    print("Dia ruim");
  }
  else{
    print("Dia bom");
  }

}