import 'package:flutter/foundation.dart';

 class MenuNavigationItemModel {
  final String image;
  final VoidCallback action;

  MenuNavigationItemModel({@required this.image, this.action});
}
