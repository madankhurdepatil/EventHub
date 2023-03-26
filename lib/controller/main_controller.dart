import 'package:get/get.dart';

class MainController extends GetxController {
  RxBool isDark = false.obs;

  void changeTheme({required RxBool black}){
    isDark= black ;
  }

}
