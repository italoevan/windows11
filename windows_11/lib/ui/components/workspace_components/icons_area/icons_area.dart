import 'package:flutter/material.dart';
import 'package:windows_11/data/models/workspace/worksapce_icons_models.dart';
import 'package:windows_11/ui/components/workspace_components/workspace_icons_component.dart';

class IconsArea extends StatelessWidget {
  final double height;
  final double width;
  List<WorkspaceIconsComponent> list;
  IconsArea(this.height, this.width);

  @override
  Widget build(BuildContext context) {
    list = [
      WorkspaceIconsComponent(WorkspaceIconsModel(
          imageUrl: 'assets/images/icons/chrome_icon.png',
          name: 'Google\nChrome')),
      WorkspaceIconsComponent(WorkspaceIconsModel(
          imageUrl: 'assets/images/icons/chrome_icon.png',
          name: 'Google\nChrome')),
      WorkspaceIconsComponent(WorkspaceIconsModel(
          imageUrl: 'assets/images/icons/chrome_icon.png',
          name: 'Google\nChrome')),
      WorkspaceIconsComponent(WorkspaceIconsModel(
          imageUrl: 'assets/images/icons/chrome_icon.png',
          name: 'Google\nChrome')),
      WorkspaceIconsComponent(WorkspaceIconsModel(
          imageUrl: 'assets/images/icons/chrome_icon.png',
          name: 'Google\nChrome')),
      WorkspaceIconsComponent(WorkspaceIconsModel(
          imageUrl: 'assets/images/icons/chrome_icon.png',
          name: 'Google\nChrome')),
      WorkspaceIconsComponent(WorkspaceIconsModel(
          imageUrl: 'assets/images/icons/chrome_icon.png',
          name: 'Google\nChrome')),
    ];
    return Container(
      height: height - 40,
      width: 100,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return list[index];
            }),
      ),
    );
  }
}
