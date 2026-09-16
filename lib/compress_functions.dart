import 'dart:io';

bool validityCheckCompress(String chain){
  return RegExp(r'[\d\W]').hasMatch(chain); //if true is returned, Validity check is failed //
}

bool validityCheckDecompress(String chain){
  return !RegExp(r'[a-zA-Z]').hasMatch(chain) || RegExp(r'\W').hasMatch(chain);
}

  String userchainComp ([String a = '0']){
     if (a == '0'){ 
      String userInput = '';
        while (validityCheckCompress(userInput) == true || userInput.isEmpty){
          print ('Bitte gib eine Buchstabenkette ein!');
          userInput = stdin.readLineSync() ?? '';
          validityCheckCompress(userInput);
          if (validityCheckCompress(userInput) == true){
          print('Ungültige Eingabe. Zahlen und Sonderzeichen sind nicht erlaubt.');
          }   
        }   
          return userInput;
      }

      else {
        validityCheckCompress(a);
          if (validityCheckCompress(a) == true){
            print('Ungültige Eingabe. Zahlen und Sonderzeichen sind nicht erlaubt.');

          }
            return a;
      }
  }

   String userchainDecomp ([String a = '0']){
     if (a == '0'){ 
      String userInput = '';
        while (validityCheckDecompress(userInput) == true || userInput.isEmpty){
          print ('Bitte gib eine Buchstabenkette ein!');
          userInput = stdin.readLineSync() ?? '';
          validityCheckDecompress(userInput);
          if (validityCheckDecompress(userInput) == true){
          print('Ungültige Eingabe. Muss Buchstaben enthalten und keine Sonderzeichen.');
          }   
        }   
          return userInput;
      }

      else {
        validityCheckDecompress(a);
          if (validityCheckDecompress(a) == true){
            print('Ungültige Eingabe. Muss Buchstaben enthalten und keine Sonderzeichen.');

          }
            return a;
      }
  }