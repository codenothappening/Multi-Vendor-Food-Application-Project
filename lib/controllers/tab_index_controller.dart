import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class TabIndexController extends GetxController {
  RxInt _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  set SetTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}
