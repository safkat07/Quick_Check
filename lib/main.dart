import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:new_todo/pages/home_page.dart';

void main() async{
  
  //init hive
  await Hive.initFlutter();
  
  //open a box
  
  var box = await Hive.openBox('mybox');
  
  
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.red),
    );
  }
}

