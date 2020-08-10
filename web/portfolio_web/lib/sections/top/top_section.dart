import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/sections/top/components/logo_and_blur_box.dart';
import 'package:portfolio_web/sections/top/components/menu.dart';
import 'package:portfolio_web/sections/top/components/personal_pic.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage("assets/images/background.png")),
      ),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            PersonalPic(),
            Positioned(
              bottom: 0,
              child: Menu(),
            )
          ],
        ),
      ),
    );
  }
}
