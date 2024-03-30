
int addTwo(int num1,int num2){
  int sum = num1 +num2;
  return sum;
}
num subtractTwo(num num1 ,num num2){
  num subResult =num1-num2;
  return subResult;
}
num multiplyTwo(num num1 ,num num2){
  num mutplyResult =num1*num2;
  return mutplyResult;
}

double divideTwo(double num1, double num2){
   double divideResult = num1/num2;
   return divideResult;
}
int stringLength( String name){
  int namelength = name.length;
  return namelength;

}
int getFirstElement(List mygrades){
int element = mygrades[0];
return element;

}
void main(){
  print(getFirstElement([46,78,90,60]));
  print(stringLength("John Arthur"));
  print(divideTwo(28, 6));
 print(multiplyTwo(25, 5));
 print(subtractTwo(30, 5));
  print(addTwo(30, 5));
}

