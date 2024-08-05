import 'dart:math';

void main(){
  const int a = 1, b = -3, c = 2;
  num raiz1 = (-b + sqrt(pow(b,2) - 4*a*c) ) / (2*a);
  num raiz2 = (-b - sqrt(pow(b,2) - 4*a*c) ) / (2*a);
  print("x1 = ${raiz1.toString()}\nx2 = ${raiz2.toString()}");
}