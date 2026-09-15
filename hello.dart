String myText = 'Hallo';

void main(List<String?> worldArgument) {

  if (worldArgument.isEmpty ) {
    print ('Hallo Unbekannter');
  }
  else {
  print ('$myText ${worldArgument.join(' ')}' '!'); // Interpolation is just the Insertion of variables with $ just like ins js, difference ist the {} are only needed when using for example lists with a specific argument list[] //
        }
    }