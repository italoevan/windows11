import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:windows_11/controllers/workspace_controllers/workspace_main_controller.dart';
import 'package:windows_11/ui/components/workspace_components/navigation/item_list.dart';

class NavigationComponent extends StatelessWidget {
  final WorkspaceMainController _controller;

  NavigationComponent(this._controller);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 40,
      color: Get.context.theme.primaryColor.withOpacity(0.8),
      child: ItemList(_controller),
    );
  }
}
