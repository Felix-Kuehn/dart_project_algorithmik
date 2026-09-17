import 'package:dart_project_algorithmik/compress_functions.dart';

void main(List<String> argument){
  String input;
if (argument.isEmpty){
 input = userchainDecomp();
}
else {
  
  input =userchainDecomp(argument[0]);

}

String result = decompress(input);
print (result);
}