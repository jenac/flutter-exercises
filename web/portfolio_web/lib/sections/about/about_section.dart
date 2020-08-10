import 'package:flutter/material.dart';
import 'package:portfolio_web/components/default_button.dart';
import 'package:portfolio_web/components/my_offline_button.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/sections/about/components/about_section_text.dart';
import 'package:portfolio_web/sections/about/components/about_text_with_sign.dart';
import 'package:portfolio_web/sections/about/components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                ),
              ),
              ExperienceCard(
                numOfExp: "12",
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                ),
              )
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire me!",
                press: () {},
              ),
              SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV!",
                press: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
