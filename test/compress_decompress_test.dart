import 'dart:math';
import 'package:dart_project_algorithmik/compress_functions.dart';

void main(){

  String originString = '';
  String compressedString = '';
  String newString ='';
  bool check;

 
  originString = randomTestString();
  originString = originString.toUpperCase();
  print (originString);

  compressedString =compress(originString);
  newString = decompress(compressedString);
  print (newString);

  check = (originString == newString);

  if (check == true){
    print ('Das Programm funktionier wie gewünscht.');
  }
  else {
    print ('Es gibt Probeleme mit dem Programm.');
  }
}