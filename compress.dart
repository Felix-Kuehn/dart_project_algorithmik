import 'dart:io';

String letterChainUser = '';

 bool validityCheck(String letterChainUser){
  return RegExp(r'[\d\W]').hasMatch(letterChainUser); //if true is returned, Validity check is failed //
}

void userInput (){
  while (letterChainUser.isEmpty){
    print ('Bitte gib eine Zeichenfolge aus klein und Großbuchstaben ein!');
    letterChainUser = (stdin.readLineSync() ?? '');
  }
      validityCheck(letterChainUser);
        if (validityCheck(letterChainUser) == true){
            print ('Ungültige Zeichenkette');
        }
        else {
          print('Gültige Zeichenkette');
            }
  }

  



void main (){
  userInput();
}