import 'package:flutter_start_lab_2/profile_suggar.dart';
import 'package:flutter_start_lab_2/book_name_add_sum.dart';
import 'package:flutter_start_lab_2/area_factory.dart';
import 'package:flutter_start_lab_2/area_init.dart';
import 'package:flutter_start_lab_2/mixin.dart';
import 'package:flutter_start_lab_2/work_with_lists.dart';

void main() {
  Profile profile1 = Profile("John", "Software engineer and avid reader");
  profile1.printProfile();

  Profile profile2 = Profile("Jane", null);
  profile2.printProfile();

  Profile profile3 = Profile(null, "Loves to travel and try new foods");
  profile3.printProfile();

  Profile profile4 = Profile(null, null);
  profile4.printProfile();

  LambdaFunctionsClousere lambdaFunctionsClousere = LambdaFunctionsClousere();
  var catcherInTheRye = lambdaFunctionsClousere.book('Catcher in the Rye');
  print(catcherInTheRye('J. D. Salinger'));

  var degreesFahrenheit451 =
      lambdaFunctionsClousere.book('451 degrees Fahrenheit');
  print(degreesFahrenheit451('Ray Bradbury'));

  var addSum = lambdaFunctionsClousere.addSum();
  print(addSum);

  var bird = Bird();
  bird.fly();
  bird.walk();

  var human = Human();
  human.walk();

  Area area = Area(10, 20);
  print("Area is: ${area.area}");

  AreaInitConsructor areaInitConsructor = AreaInitConsructor(10, 20);
  print("Area is: ${areaInitConsructor.area}");

  AreaInitConsructor areaInitConsructorAnother = AreaInitConsructor(-10, 20);
  print("Area is: ${areaInitConsructorAnother.area}");

  WorkWithLists arr = WorkWithLists();

  var list = arr.list;

  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  print(list);

  var fruits = arr.fruits;
  print("First Value is ${fruits.first}");
  print("Last Value is ${fruits.last}");
  print("Is fruits empty? ${fruits.isEmpty}");
  print("Is fruits not empty? ${fruits.isNotEmpty}");
  print("The length of fruits is ${fruits.length}");

  var countryCapital = arr.countryCapital;
  countryCapital.forEach((key, value) => print('$key , $value'));
  print(countryCapital);
}
