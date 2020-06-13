import 'package:flutter/material.dart';
import 'package:furtniture_app/model/model.dart';

import '../../../constant.dart';

class Items extends StatelessWidget {
  const Items({
    this.itemIndex,
    this.product,
    this.onPressed,
    Key key,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
        child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        //product height
        height: 160.0,
        child: Stack(
          children: <Widget>[
            Container(
              height: 136.0,
              decoration: BoxDecoration(
                color:itemIndex.isEven? kBlueColor:kSecondaryColor,
                borderRadius: BorderRadius.circular(22.0),
                boxShadow: [kDefaultShadow]
              ),
              child: Container(
                margin: EdgeInsets.only(right: 10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.0)),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 140.0,
                width: 150.0,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 0,
              child: SizedBox(
                height: 160.0,
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:kDefaultPadding),
                        child: Text(
                          product.title
                        ),
                      ),
                      Spacer(),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal:10.0,
                        vertical:5.0),
                        width: 100.0,
                        child: Text('\$${product.price}'),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius:BorderRadius.only(
                            bottomLeft: Radius.circular(22.0)
                          ), 
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}