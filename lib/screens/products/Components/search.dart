import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';

class SearchBox extends StatelessWidget {
  final Function onchnage;
  const SearchBox({Key key, this.onchnage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding/5),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(15.0)),
      child: TextField(
        style: TextStyle(color: Colors.white),
        onChanged: onchnage,
        decoration: InputDecoration(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: 'search'.toUpperCase(),
            hintStyle: TextStyle(color: Colors.white)),
      ),
    );
  }
}