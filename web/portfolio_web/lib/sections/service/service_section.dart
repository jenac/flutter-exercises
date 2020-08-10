import 'package:flutter/material.dart';
import 'package:portfolio_web/components/section_title.dart';

import 'package:portfolio_web/constants.dart';

import 'package:portfolio_web/models/service.dart';
import 'package:portfolio_web/sections/service/components/service_card.dart';

class ServiceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            subTitle: "My Strong Area",
            title: "Service Offering",
            color: Color(0xFFFF0000),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  services.length, (index) => ServiceCard(index: index)))
        ],
      ),
    );
  }
}
