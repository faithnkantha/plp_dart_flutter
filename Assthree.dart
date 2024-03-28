import 'dart:io';

void main(){
  print("Enter a number: ");
  String? input= stdin.readLineSync();
  if(input != null && input.isNotEmpty && isNumeric(input)){
  int number = int.parse(input);
  if(number>10)
   print("Your number is greater than 10");
  else if(number<10)
   print("Your number is less than 10");
 else  if(number== 10)
  print("Your number is equal to 10");}
 else{
  print("invalid output:enter a number");
 }  
  }


bool isNumeric(String s){
  return int.tryParse(s) != null;
}