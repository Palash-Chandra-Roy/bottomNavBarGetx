import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BottomNavController extends GetxController{

  var tabIndex =0.obs;
  void currentIndex (int index){
    tabIndex.value =index;
    update();
  }
}

