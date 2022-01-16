import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:todo_getx/model/todo_model.dart';

class TodoController extends GetxController {
  // var todos = List<TodoModel>().obs; => deprecated
  var todos = <TodoModel>[].obs;

  final todoTextController = TextEditingController();
  final addNewItemTextController = TextEditingController();
}
