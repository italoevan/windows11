import 'package:flutter/material.dart';
import 'package:windows_11/data/models/menu_navigation_item_model.dart';

class MenuNavigationItemComponent extends StatefulWidget {
  final MenuNavigationItemModel model;

  MenuNavigationItemComponent(this.model);

  @override
  _MenuNavigationItemComponentState createState() =>
      _MenuNavigationItemComponentState();
}

class _MenuNavigationItemComponentState
    extends State<MenuNavigationItemComponent> {
  final double standartSize = 35;
  double iconSize = 35;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.model.action,
        child: MouseRegion(
          onEnter: (value) {
            setState(() {
              iconSize = 45;
            });
          },
          onExit: (value) {
            setState(() {
              iconSize = standartSize;
            });
          },
          child: Container(
            height: 40,
            child: Center(
                child: Image.asset(
              widget.model.image,
              height: iconSize,
              width: iconSize,
            )),
          ),
        ));
  }
}
