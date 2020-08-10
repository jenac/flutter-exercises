import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';

class MyOutlineButton extends StatelessWidget {
  const MyOutlineButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        padding: EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding * 2.5),
        onPressed: press,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        borderSide: BorderSide(color: Color(0xFFEDEDED)),
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
      ),
    );
  }
}
