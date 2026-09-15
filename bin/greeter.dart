import 'dart:io';

String? firstName;
String? lastName = '';
int? age;
bool sex = true;
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

int getAge() {

  while (age == null || age! <= 0 || age! >= 150)
  {
  print ('Wie alt bist du?');
  age = int.tryParse(stdin.readLineSync() ?? ''); // sdin will be read first and gives out a numberstring or null. null is catched by the ?? and returns an empty string instead of null, which is read by int.parse and this returns null //
  }
  return age!;
}

bool getSex() {
    
  String? sexWritten;

    while ( sexWritten != 'm' && sexWritten != 'f') 
    {

      print ('Bist du männlich oder weiblich? m / f');
      sexWritten = stdin.readLineSync();

        switch (sexWritten){

        case 'f':
        sex = true;
        break;

        case 'm':
        sex = false;
        break;
      }
  }
  return sex;
}

String setSalutation (bool? sex) {
    if (sex == true){
      salutation = 'Frau';
    }
    else {
      
      salutation = 'Herr';
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

  else {
        if (dayTime == 1){
        print ('Guten Morgen, $salutation $lastName !');
        }
        else if (dayTime == 2){
        print ('Guten Tag, $salutation $lastName !');
        }
        else if(dayTime == 3){
        print ('Guten Abend, $salutation $lastName !');
        }
  }
}

void main() {

getCurrentHour();
getFirstName();
getLastName();
getAge();
getSex();
setSalutation(sex);
print (dayTime);
printSalutation();
}
