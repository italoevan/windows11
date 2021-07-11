import 'package:flutter/material.dart';

class WorkspaceIconsModel {
  final String imageUrl;
  final String name;
  final Function onTap;

  WorkspaceIconsModel({@required this.imageUrl, @required this.name, this.onTap});
}
