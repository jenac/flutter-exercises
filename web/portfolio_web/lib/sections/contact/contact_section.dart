import 'package:flutter/material.dart';
import 'package:portfolio_web/components/default_button.dart';
import 'package:portfolio_web/components/section_title.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/sections/contact/components/social_card.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          image: AssetImage("assets/images/bg_img_2.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          SectionTitle(
            title: "Contact Me",
            subTitle: "For Project inquiry and information",
            color: Color(0xFF07E24A),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1110),
            margin: EdgeInsets.only(top: kDefaultPadding * 2),
            padding: EdgeInsets.all(kDefaultPadding * 3),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialCard(
                      color: Color(0xFFD9FFFC),
                      iconSrc: "assets/images/skype.png",
                      name: "WhatsNew",
                      press: () {},
                    ),
                    SocialCard(
                      color: Color(0xFFE4FFC7),
                      iconSrc: "assets/images/whatsapp.png",
                      name: "WhatsNew",
                      press: () {},
                    ),
                    SocialCard(
                      color: Color(0xFFE8F0F9),
                      iconSrc: "assets/images/messanger.png",
                      name: "WhatsNew",
                      press: () {},
                    ),
                    SizedBox(
                      height: kDefaultPadding * 2,
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 2,
                ),
                ContactForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter your name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select project type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select project budget",
              ),
            ),
          ),
          SizedBox(
            // height: 300,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
