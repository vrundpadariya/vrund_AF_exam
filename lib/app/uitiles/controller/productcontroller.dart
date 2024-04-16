// import 'package:exam_af/app/uitiles/helper/databased.dart';
// import 'package:get/get.dart';
// import 'model.dart';
//
// class productController extends GetxController {
//   List<Auction> myPrduct = [];
//
//   productController() {
//     getMyTodos();
//   }
//
//   Future<void> insertMyTodos({required String title}) async {
//     await dbHelper.dbHelper
//         .insertMyTask(title: title)
//         .then((value) => getMyTodos());
//
//   }
//
//   Future<void> getMyTodos() async {
//     myTask = await DBHelper.dbHelper.getMyTasks();
//
//   }
//
//   Future<void> updateMyTodo({required int id, required String title}) async {
//     await DBHelper.dbHelper
//         .updateMyTasks(id: id, title: title)
//         .then((value) => getMyTodos());
//
//   }
//
//   Future<void> deleteMyTodo({required int id}) async {
//     await DBHelper.dbHelper..then((value) => getMyTodos());
//
//   }
//
//
// }
