import 'package:flutter/material.dart';
import 'package:furtniture_app/constant.dart';
import 'package:furtniture_app/model/model.dart';
import 'package:furtniture_app/screens/detail/Components/colorDits.dart';
import 'package:furtniture_app/screens/detail/Components/item_image.dart';

class Body extends StatelessWidget {
  final Product product;
  Body(
    {
      this.product
    }
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
          child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22.0),
                    bottomRight: Radius.circular(22.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: ItemImage(
                    size: size,
                    image:product.image
                    ),
                  ),
                ListColorDots(),
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    '\$${product.price}',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal:kDefaultPadding/2.5),

                  child: Text(product.description,style: TextStyle(
                    color: kTextColor
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ListColorDots extends StatelessWidget {
  const ListColorDots({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ColorDots(
            fillColor: Colors.black45,
          ),
          ColorDots(
            fillColor: kPrimaryColor,
          ),
          ColorDots(
            fillColor: kSecondaryColor,
          ),
        ],
      ),
    );
  }
}
