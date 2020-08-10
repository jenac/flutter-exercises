import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
      color: Color(0xFFE8F0F9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(
            imageSrc,
            height: 40,
          ),
          SizedBox(
            width: kDefaultPadding,
          ),
          Text(text)
        ],
      ),
    );
  }
}
