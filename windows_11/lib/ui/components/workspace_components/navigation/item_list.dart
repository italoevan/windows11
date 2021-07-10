import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:windows_11/controllers/workspace_controllers/workspace_main_controller.dart';
import 'package:windows_11/data/models/menu_navigation_item_model.dart';
import 'package:windows_11/ui/components/workspace_components/navigation/menu_navigation_item_component.dart';
import 'package:windows_11/utils/consts/images_consts.dart';

class ItemList extends StatelessWidget {
  final WorkspaceMainController _controller;

  ItemList(this._controller);

  @override
  Widget build(BuildContext context) {
    List<MenuNavigationItemComponent> itemList = [
      MenuNavigationItemComponent(MenuNavigationItemModel(
          image: ImagesConsts.windowsIcon,
          action: () {
            _controller.changeMenuIsOpen();
          })),
      MenuNavigationItemComponent(
          MenuNavigationItemModel(image: ImagesConsts.windowsSearchIcon))
    ];

    return Container(
        height: 40,
        width: Get.width,
        child: Center(
          child: ListView.separated(
              shrinkWrap: true,
              primary: false,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => SizedBox(width: 8),
              itemCount: itemList.length,
              itemBuilder: (context, index) => itemList[index]),
        ));
  }
}
