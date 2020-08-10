import 'package:flutter/material.dart';
import 'package:portfolio_web/components/section_title.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/models/feedback.dart';
import 'package:portfolio_web/sections/feedback/components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "Feedback Received",
            subTitle: "Client's testimonials that inspired me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                feedbacks.length, (index) => FeedbackCard(index: index)),
          ),
        ],
      ),
    );
  }
}

