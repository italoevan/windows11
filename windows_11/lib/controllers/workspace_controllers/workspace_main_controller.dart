import 'package:get/get.dart';

class WorkspaceMainController extends GetxController {
  RxBool _menuIsOpen = false.obs;

  bool get menuIsOpenGetter => _menuIsOpen.value;
  void changeMenuIsOpen() {
    _menuIsOpen.value = !_menuIsOpen.value;
  }
}
