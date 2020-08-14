import 'package:flutter/material.dart';
import 'package:resp_furniture_app/components/title_text.dart';
import 'package:resp_furniture_app/screens/home/components/categories.dart';
import 'package:resp_furniture_app/screens/home/components/recommeded_products.dart';
import 'package:resp_furniture_app/services/fetch_categories.dart';
import 'package:resp_furniture_app/services/fetch_products.dart';
import 'package:resp_furniture_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(
              text: "Browse by Categories",
            ),
          ),
          FutureBuilder(
            future: fetchCategories(),
            builder: (context, snapshot) => snapshot.hasData
                ? Categories(
                    categories: snapshot.data,
                  )
                : Center(
                    child: Image.asset("assets/ripple.gif"),
                  ),
          ),
          Divider(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(defaultSize * 2),
            child: TitleText(text: "Recommended for you"),
          ),
          FutureBuilder(
            future: fetchProducts(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? RecommendedProducts(products: snapshot.data)
                  : Center(child: Image.asset("assets/ripple.gif"));
            },
          ),
        ],
      ),
    );
  }
}
