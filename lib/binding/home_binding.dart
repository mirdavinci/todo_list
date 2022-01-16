import 'package:get/get.dart';
import 'package:todo_getx/controller/todo_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(TodoController());
  }
}
