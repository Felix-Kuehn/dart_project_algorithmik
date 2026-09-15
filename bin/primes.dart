import 'dart:io';

List<int> primeNumbers = [];
int? givenNumber ;
int foundDividers = 0;
int result = 0;

int askNumber(){
while (givenNumber == null || givenNumber! < 1){
  print('Bitte gib eine Zahl größer als 1 an. Ich werde dir alle Primzahlen bis zu dieser Zahl nennen!');
  givenNumber = int.tryParse(stdin.readLineSync() ?? '');
}
return givenNumber!;
}

void calculatePrimeNumbers(){
  for (int i= 2; i < givenNumber!; i++){
    bool isPrime = true;

      for (int j = 2; j < i; j++){
       if (i % j == 0){  //checks if every number before herself cant divide the number, if one has a rest of 0, the loop instantly breaks and it goes to the next i //
        isPrime = false;
        break;
       }
        }
  
        if (isPrime){
          primeNumbers.add(i);
      }
    
  }
  print(primeNumbers);
}


void main (){
  askNumber();
  calculatePrimeNumbers();
}