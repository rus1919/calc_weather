
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();
  var box = await Hive.openBox('testBox');
  //box.put('name', 'David');

  await box.delete('name');
  var name = box.get('name');

  print('Name: $name');
}
