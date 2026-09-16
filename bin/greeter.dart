import 'dart:io';

String? firstName = '';
String? lastName = ''; 
int? age;
String sex = '';
String salutation = '';
DateTime date = DateTime.now();
int dayHour = 0;
int dayTime = 0;


String getFirstName() {

  while (firstName == null || firstName!.isEmpty)
  {
  print ('Wie lautet dein Vorname?');
  firstName = stdin.readLineSync();
  }
  return firstName!;
}

String getLastName() {

      while (lastName == null || lastName!.isEmpty)
      {
        print ('Wie lautet dein Nachname?');
        lastName = stdin.readLineSync();
      }
      return lastName!;
}


/* String askingName (String message){
  String? userInput;
  while (userInput == null || userInput.isEmpty){
        print(message);
        userInput = stdin.readLineSync();
  }
  return userInput;
} */

int getAge() {

  while (age == null ||  age! <= 0 || age! >= 150)
  {
  print ('Wie alt bist du?');
  age = int.tryParse(stdin.readLineSync() ?? ''); // sdin will be read first and gives out a numberstring or null. null is catched by the ?? and returns an empty string instead of null, which is read by int.parse and this returns null //
  }
  return age!;
}

String getSex() {
    
  String? sexWritten;

    while ( sexWritten != 'm' && sexWritten != 'f' && sexWritten != 'd') 
    {

      print ('Bist du männlich, weiblich oder divers?? m / f/ d');
      sexWritten = stdin.readLineSync();
      }
      sex = sexWritten!;
       return sex;
  }

String setSalutation (String? sex) {
    if (sex == 'f'){
      salutation = 'Frau';
    }
    if (sex == 'm') {
      
      salutation = 'Herr';
    }
    else {
      salutation = '';
    }
    return salutation;
}

int getCurrentHour () {
  dayHour = date.hour;
  if ( dayHour >= 6 && dayHour < 12 ){
  dayTime = 1;
  }
  else if (dayHour >= 12 && dayHour <= 18){
  dayTime = 2;
  }

  else {
  dayTime = 3;
  }
  return dayTime;
}

void printSalutation () {

  if (age! <40) {
    print ('Hallo $firstName !');
  }

  else if (sex == 'd'){
        if (dayTime == 1){
        print ('Guten Morgen, $firstName !');
        }
        else if (dayTime == 2){
        print ('Guten Tag, $firstName !');
        }
        else if (dayTime == 3){
        print ('Guten Abend, $firstName !');
        }
  }

  else {
        if (dayTime == 1){
        print ('Guten Morgen, $salutation $lastName !');
        }
        else if (dayTime == 2){
        print ('Guten Tag, $salutation $lastName !');
        }
        else if (dayTime == 3){
        print ('Guten Abend, $salutation $lastName !');
        }
  }
}

void main() {

getCurrentHour();
getFirstName();
getLastName();
/* askingName('Wie lautet dein Vorname ?');
askingName('Wie lautet dein Nachname ?'); */
getAge();
getSex();
setSalutation(sex);
/* print (dayTime); */
printSalutation();
}
