import 'package:flutter/material.dart';
import 'package:portfolio_web/constants.dart';
import 'package:portfolio_web/models/feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  Duration duration = Duration(microseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: duration,
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -55),
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 10),
                  boxShadow: [if (!isHover) kDefaultCardShadow],
                  image: DecorationImage(
                    image: AssetImage(feedbacks[widget.index].userPic),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[widget.index].review,
              style: TextStyle(
                color: kTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            Text(
              "James Bond",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
