import 'package:flutter/material.dart';
import 'package:slobbr_app/utils/sample_data.dart';
import 'package:slobbr_app/widgets/horizontal_item_card.dart';
import 'package:slobbr_app/widgets/icon_badge.dart';
import 'package:slobbr_app/widgets/search_bar.dart';
import 'package:slobbr_app/widgets/vertical_item_card.dart';
import 'package:animations/animations.dart';

import 'details.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFBFBF2),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.shopping_cart_outlined,
              color: Color(0xFF001B2E)
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return Details(dishIndex: 1);
                  }
                ),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Wat eten we vandaag?",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
          buildHorizontalList(context),
          buildVerticalList(),
        ],
      ),
    );
  }

  buildHorizontalList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: dishes == null ? 0 : dishes.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = dishes[index];
          return HorizontalItemCard(place: place, dishIndex: index,);
        },
      ),
    );
  }

  buildVerticalList() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: dishes == null ? 0 : dishes.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = dishes[index];
          return VerticalItemCard(place: place, dishIndex: index);
        },
      ),
    );
  }
}