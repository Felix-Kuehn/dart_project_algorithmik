import 'dart:io';
import 'dart:math';

bool validityCheckCompress(String chain){
  return RegExp(r'[\d\W]').hasMatch(chain); //if true is returned, Validity check is failed //
}

bool validityCheckDecompress(String chain){
  return !RegExp(r'[a-zA-Z]').hasMatch(chain) || RegExp(r'\W').hasMatch(chain) || !RegExp(r'\d').hasMatch(chain);
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

   String userchainDecomp ([String? a]){
     if (a == null){ 
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
            print('Ungültige Eingabe. Muss Buchstaben und Zahlen enthalten und keine Sonderzeichen.');

          }
            return a;
      }
  }

  String compress (String input){
    String sorted = '';
    int lastEnd = 0;

    input = input.toUpperCase();
    final list = RegExp(r'([A-Z])\1{2,}').allMatches(input); // 1+ would be one other repetition, 1{2,} means at least 2 repetitions {min,max} //

     for (final match in list) {

      sorted += input.substring(lastEnd, match.start);

    /* print(match.group(0)!.length);
    print(match.group(0));    */       // 0 points to the square bracket number in RegExp(). 0 means everything, 1 to the first bracket, and f.e. to the second bracket. As i have only one it says out of range. //
      sorted += ('${match.group(1)}${match.group(0)!.length}'); // += puts everything next to eachother instead of under each other //
  
    lastEnd = match.end;
  
  }
  sorted += input.substring(lastEnd);
  print (sorted);

  return sorted;
   }

    String decompress (String input){

    input = input.toUpperCase();
    
    final list = RegExp(r'([A-Z])(\d+)');

return input.replaceAllMapped(list, (match) {
    final letter = match.group(1)!;
    final count = int.parse(match.group(2)!);
    return letter * count;
});

    }
    

 String randomTestString(){
    final random = Random();

    const allChars = 'AaBbCcDdMmNnOoPpQqRrSsTtUuVvWwXxYyZzEeFfGgHhIiJjKkL';


    String result = '';

    for (int i = 0; i < 50; i++) {
      if (i > 0 && random.nextDouble() < 0.3) {
        // 30 % Wahrscheinlichkeit:
        // vorheriges Zeichen wiederholen
        result += result[i - 1];
      } else {
        // normales zufälliges Zeichen
        result += allChars[random.nextInt(allChars.length)];
      }
    }

    print(result);
    return result;
  }