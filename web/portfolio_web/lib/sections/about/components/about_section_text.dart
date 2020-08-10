import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(
            color: kTextColor, height: 2, fontWeight: FontWeight.w200),
      ),
    );
  }
}
