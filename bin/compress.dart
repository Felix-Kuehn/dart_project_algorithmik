import 'package:dart_project_algorithmik/compress_functions.dart';

void main(List<String> argument){

  String input;
if (argument.isEmpty){
 input = userchainComp();
}
else {
  input = userchainComp(argument[0]);
}
compress (input);
}