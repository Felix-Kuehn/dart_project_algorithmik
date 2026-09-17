
import 'dart:convert';
import 'dart:io';
import 'package:dart_project_algorithmik/geschlecht.dart';

/* void main () {
  int cartItems = 0;

  String message = cartItems > 0 ? 'Du hast Waren in deinem Warenkorb' : 'Du hast noch keine Ware in deinem Einkaufskorb';

  print (message);

  bool isMember = true;
  bool hasCoupon = true;

  String discountMessage = isMember == true && hasCoupon == true ? 'Sie bekommen einen Discount' : ' Sie bekommen keinen Discount';
    print (discountMessage);
} */

/* void main (){
  final firstName = inputString('Dein Vorname ?');
  final lastName = inputString('Dein Nachname ?');
  print('Vorname: $firstName');
  print('Nachname: $lastName');
}


String inputString (String message){
  String? input;
  while(input == null || input.isEmpty){
      print(message);
      input = stdin.readLineSync();
  }
  return input;
} */
/* void main () {

final geschlecht = inputGeschlecht('Welches Geschlechts hast du ? (m/w/d)');
print(geschlecht);

}

Geschlecht inputGeschlecht(String message){
    String? input;
    const viableSexInput = ['m','w','d','M','W','D','1','2','3'];
      while(input == null || !viableSexInput.contains(input)){
      print(message);
      input = stdin.readLineSync(encoding: utf8);
      }
    Geschlecht? geschlecht;
      switch(input){
        case 'm':
        case 'M':
        case '1':
        geschlecht = Geschlecht.maennlich;
        break;
        case 'w':
        case 'W':
        case '2':
        geschlecht = Geschlecht.weiblich;
        break;
        case 'd':
        case 'D':
        case '3':
        geschlecht = Geschlecht.divers;
        break;
      }
      return geschlecht!;
  } */
/* bool validityCheckCompress(String chain){
  return RegExp(r'[\d\W]').hasMatch(chain); //if true is returned, Validity check is failed //
}

  String userchainDecomp ([String? a]){
     if (a == null){ 
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
  } */

//Test Compress//

// -------------------------------------------------------//

/*    String compress (String input){
    String sorted = '';
    int lastEnd = 0;

    input = input.toUpperCase();
    final list = RegExp(r'([A-Z])\1{2,}').allMatches(input); // 1+ would be one other repetition, 1{2,} means at least 2 repetitions {min,max} //

     for (final match in list) {

      sorted += input.substring(lastEnd, match.start);

    /* print(match.group(0)!.length);
    print(match.group(0));    */       // 0 points to the square bracket number in RegExp(). 0 means everything, 1 to the first bracket, and f.e. to the second bracket. As i have only one it says out of range. //
      sorted += ('${match.group(0)!.length}${match.group(1)}'); // += puts everything next to eachother instead of under each other //
  
    lastEnd = match.end;
  
  }
  sorted += input.substring(lastEnd);
  print (sorted);

  return sorted;
   }

 void main(){

  compress('abbcccddddeeeeeeeeeeeeef');
 } */

 // Test Decompress //

 //---------------------------------------------------------//

 String decompress (String input){

    input = input.toUpperCase();
    
    final list = RegExp(r'([A-Z])(\d+)');

///// The following example finds all matches of a [RegExp] in a [String]
/// and iterates through the returned iterable of `Match` objects.
/// ```dart
/// final regExp = RegExp(r'(\w+)');
/// const string = 'Parse my string';
/// final matches = regExp.allMatches(string);
/// for (final m in matches) {
///   String match = m[0]!;
///   print(match);
/// }
/// ```

return input.replaceAllMapped(list, (match) {
    final letter = match.group(1)!;
    final count = int.parse(match.group(2)!);
    return letter * count;
});

    }
    
    