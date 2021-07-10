import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:windows_11/controllers/workspace_controllers/workspace_main_controller.dart';
import 'package:windows_11/ui/components/workspace_components/navigation/menu/menu_component.dart';
import 'package:windows_11/ui/components/workspace_components/navigation/navigation_component.dart';
import 'package:windows_11/utils/consts/images_consts.dart';

class Workspace extends StatelessWidget {
  final WorkspaceMainController _controller =
      Get.put(WorkspaceMainController());

  @override
  Widget build(BuildContext context) {
    var height = Get.height;
    var width = Get.width;

    return Scaffold(
      body: Obx(() => GestureDetector(
          onTap: _controller.menuIsOpenGetter
              ? () => _controller.changeMenuIsOpen()
              : () {},
          child: Container(
            height: height,
            width: width,
            child: Stack(
              children: [
                Image.asset(
                  ImagesConsts.wallpaper,
                  height: height,
                  width: width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      Obx(() => Visibility(
                          visible: _controller.menuIsOpenGetter,
                          child: MenuComponent())),
                      SizedBox(
                        height: 10,
                      ),
                      NavigationComponent(_controller),
                    ],
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
