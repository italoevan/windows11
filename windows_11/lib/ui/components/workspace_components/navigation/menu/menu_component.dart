import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'footer/menu_footer_component.dart';

class MenuComponent extends StatelessWidget {
  final double opacity = 0.8;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 500,
        height: Get.height * 0.7,
        decoration: BoxDecoration(
            color: Get.theme.accentColor.withOpacity(opacity),
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Expanded(child: Container()), //body
            MenuFooterComponent(opacity)
          ],
        ),
      ),
    );
  }
}
