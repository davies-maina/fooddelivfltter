import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/bought_foods.dart';
import 'package:food_delivery/widgets/food_category.dart';
import 'package:food_delivery/widgets/home_top_info.dart';
import 'package:food_delivery/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(50),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SearchField(),
          Container(
            margin: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Frequently ordered',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text('View all',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan)),
                )
              ],
            ),
          ),
          Container(
            child: BoughtFoods(),
          )
        ],
      ),
    );
  }
}
