import 'dart:io';
import 'dart:math';

int sixCount = 0;
int inputThrowCount = 0 ;
int randomNumber = 0;
List<int> allThrows =[];

  int askThrow () {
     String? input;
while (input == null || int.tryParse(input) == null || int.parse(input) < 1 )
  {
  print ('Wie oft möchtest du würfeln ?');
  input = stdin.readLineSync();
  }
  inputThrowCount = int.parse(input);
  return inputThrowCount;
}

void playDice(int count){
  int i = 0;
    final random = Random();
    for (int i = 0; i < count!; i++ ){
        final result = random.nextInt(6)+1;

          if (result == 6){
            sixCount++;
            allThrows.add(result);
              if (sixCount == 2){
                break;
              }
          }
          else {
            sixCount = 0;
            allThrows.add(result);
          }
    }
    if (i == count){
    print('Limit erreicht');
    }
}

void main(){

askThrow();
playDice(inputThrowCount);
print('Alle Würfe: $allThrows');
}