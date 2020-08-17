import 'package:eshop_app/constants.dart';
import 'package:eshop_app/size_config.dart';
import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Sign up",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
