import 'dart:io';

void main(){
  final int valorOriginal = int.parse(stdin.readLineSync()!);
  int valor = valorOriginal;

  var valores = [100, 50, 20, 10, 5, 2, 1];
  var notas = [0, 0, 0, 0, 0, 0, 0];
  for (int i = 0; i < 7; i++){
    notas[i] = valor ~/ valores[i];
    valor = valor % valores[i];
  }
  print(valorOriginal);
  for (int i = 0; i < 7; i++){
    print("${notas[i]} nota(s) de R\$ ${valores[i]},00");
  }
  
}