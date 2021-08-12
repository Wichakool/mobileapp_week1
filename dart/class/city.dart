import 'country.dart';
import 'problem.dart';

class City extends Country with Problem{
  City() : super("Amsterdam","สิงโต");

  void callSuper(){
    super.callHello();
    print("เมืองหลวง :"+ super.city);
  }

  @override
  String callAnimal(){
    return "สิงโต";
  }
  
}