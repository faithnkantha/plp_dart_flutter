class Person{
  String name;
  String tribe;
  num age;

  Person(this.name,this.tribe,this.age);
  void vote(){
      if(age <18)
       print("You are not eligible to vote");
      else
        print("you can vote");
 }

}
void main(){
  var Faith = Person("Nkatha","Meru",21);
  print("Name: ${Faith.name}");
  print("Name: ${Faith.tribe}");
  print("Name: ${Faith.age}");
  Faith.vote();
}