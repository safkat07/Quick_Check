import 'package:hive/hive.dart';

class ToDoDataBase {

  List toDoList = [];


  // ref the box
  final _myBox = Hive.box('mybox');


  //run this first time ever opening this app
  void createInitialData () {
    toDoList= [];
  }

  //load the data from database

void loadData () {
    toDoList = _myBox.get('TODOLIST');
}

//update the databasee

void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
}




}