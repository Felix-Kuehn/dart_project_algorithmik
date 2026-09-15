import 'dart:io';
import 'dart:math';

int sixCount = 0;
int? inputThrowCount ;
int randomNumber = 0;
List<int> allThrows =[];

  int askThrow () {
while (inputThrowCount == null || inputThrowCount! < 1 )
  {
  print ('Wie oft möchtest du würfeln ?');
  inputThrowCount = int.tryParse(stdin.readLineSync() ?? '');
  }
  return inputThrowCount!;
}

void playDice(){
  int i = 0;
    for (int i = 0; i < inputThrowCount!; i++ ){
        var random = Random();
        int result = random.nextInt(6)+1;

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
    if (i == inputThrowCount){
    print('Limit erreicht');
    }
    print('Alle Würfe: $allThrows');
}

void main(){

askThrow();
playDice();

}