import "dart:io";

void main(){
  print("Digite seu peso em Kg: ");
  double peso = double.parse(stdin.readLineSync()!);

  print("Digite sua altura em metros: ");
  double altura = double.parse(stdin.readLineSync()!);

  final double imc = peso / (altura * altura);

  switch (imc){
    case < 16.9:
      print("${imc} Kg/m^2 - Muito abaixo do peso");
    case >= 17 && <= 18.4:
      print("${imc} Kg/m^2 - Abaixo do peso");
    case >= 18.5 && <= 24.9:
      print("${imc} Kg/m^2 - Peso normal");
    case >= 25 && <= 29.9:
      print("${imc} Kg/m^2 - Acima do peso");
    case >= 30 && <= 34.9:
      print("${imc} Kg/m^2 - Obesidade grau I");
    case >= 35 && <= 40:
      print("${imc} Kg/m^2 - Obesidade grau II");
    default:
      print("${imc} Kg/m^2 - Obesidade grau III");
  }
  
}