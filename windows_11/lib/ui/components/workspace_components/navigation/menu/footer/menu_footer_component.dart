import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:windows_11/utils/consts/images_consts.dart';

class MenuFooterComponent extends StatelessWidget {
  final double _opacity;

  MenuFooterComponent(this._opacity);

  @override
  Widget build(BuildContext context) {
    return Container(
      //footer
      height: Get.height * 0.1,
      decoration: BoxDecoration(
          color: Get.theme.primaryColor.withOpacity(_opacity),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8), bottomRight: Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImagesConsts.roundedPersonIcon, color: Colors.white, height: Get.height * 0.04,),
                    Image.asset(ImagesConsts.powerIcon, color: Colors.white, height: Get.height * 0.04,)
                ],),
              ),
    );
  }
}
