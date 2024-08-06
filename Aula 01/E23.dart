import "dart:io";

const String entradaInvalida = "Entrada invalida.";
const String perguntaPressaoAr = "A pressão do ar está caindo? S/N";
const String perguntaUmidadeAr = "Houve umidade no ar? S/N";

bool obterResposta(String pergunta, String erro){
  String entrada = "";

  while (true){
    print(pergunta);
    entrada = stdin.readLineSync()!;
    if (entrada.toUpperCase() == "S"){
      return true;
    }
    else if (entrada.toUpperCase() == "N"){
      return false;
    }
    print(erro);
  }
}

void main(){

  bool pressaoCaindo = obterResposta(perguntaPressaoAr, entradaInvalida);
  bool umidadeAr = obterResposta(perguntaUmidadeAr, entradaInvalida);

  if (pressaoCaindo && umidadeAr){
    print("Provavel que chova");
  }
  else if (!pressaoCaindo && !umidadeAr){
    print("Provavelmente que esteja ensolarado");
  }
  else{
    print("Parcialmente nublado");
  }

}