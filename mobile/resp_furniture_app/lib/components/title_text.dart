import 'package:flutter/material.dart';
import 'package:resp_furniture_app/size_config.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Text(
      text,
      style: TextStyle(
        fontSize: defaultSize * 1.6,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
