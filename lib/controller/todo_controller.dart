import 'package:get/get.dart';
import 'package:todo_getx/model/todo_model.dart';

class TodoController extends GetxController {

  var todos = [].obs as List<TodoModel>;
  // var s = List<TodoModel>().obs; => deprecated

}
