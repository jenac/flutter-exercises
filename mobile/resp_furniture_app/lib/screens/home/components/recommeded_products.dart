import 'package:flutter/material.dart';
import 'package:resp_furniture_app/models/product.dart';
import 'package:resp_furniture_app/screens/details/details_screen.dart';
import 'package:resp_furniture_app/screens/home/components/product_card.dart';
import 'package:resp_furniture_app/size_config.dart';

class RecommendedProducts extends StatelessWidget {
  const RecommendedProducts({
    Key key,
    this.products,
  }) : super(key: key);

  final List<Product> products;
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.all(defaultSize * 2),
      child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:
                  SizeConfig.orientation == Orientation.portrait ? 2 : 4,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.693),
          itemBuilder: (context, index) => ProductCard(
                product: products[index],
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      ));
                },
              )),
    );
  }
}
