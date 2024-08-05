import 'dart:io';

void main(){
  print("Digite o numero de curtidas: ");
  final int curtidas = int.parse(stdin.readLineSync()!);
  print("Digite o numero de compartilhamentos: ");
  final int compartilhamentos = int.parse(stdin.readLineSync()!);

  if (curtidas > 100 && compartilhamentos > 50){
    print("A postagem é popular.");
  }
  else if ( curtidas < 10 && compartilhamentos < 5){
    print("A postagem não é popular");
  }
  else{
    print("Postagem normal");
  }
}