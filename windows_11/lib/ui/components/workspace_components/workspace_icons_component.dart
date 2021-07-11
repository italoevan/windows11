import 'package:flutter/material.dart';
import 'package:windows_11/data/models/workspace/worksapce_icons_models.dart';

class WorkspaceIconsComponent extends StatefulWidget {
  final WorkspaceIconsModel model;

  WorkspaceIconsComponent(this.model);

  @override
  _WorkspaceIconsComponentState createState() =>
      _WorkspaceIconsComponentState(model);
}

class _WorkspaceIconsComponentState extends State<WorkspaceIconsComponent> {
  Color standardColor = Colors.transparent;
  Color containerColor = Colors.transparent;
  final WorkspaceIconsModel model;

  _WorkspaceIconsComponentState(this.model);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        color: containerColor,
        child: MouseRegion(
          onEnter: (_) {
            setState(() {
              containerColor = Colors.blueAccent.withOpacity(0.5);
            });
          },
          onExit: (_) {
            setState(() {
              containerColor = standardColor;
            });
          },
          child: Container(
            height: 40,
            width: 40,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  model.imageUrl,
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(model.name,
                    style: TextStyle(
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ));
  }
}
