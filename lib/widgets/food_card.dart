import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String categoryImagePath;
  final int categoryNumberOfItems;

  FoodCard(
      {this.categoryName, this.categoryImagePath, this.categoryNumberOfItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Image(
                image: AssetImage(categoryImagePath),
                height: 65.0,
                width: 65.0,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    categoryName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text('items: $categoryNumberOfItems ')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
