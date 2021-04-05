import 'package:flutter/material.dart';
import 'package:food_delivery/data/category_data.dart';
import 'package:food_delivery/models/category_model.dart';
import 'package:food_delivery/widgets/food_card.dart';

class FoodCategory extends StatelessWidget {
  // @override
  final List<Category> _categories = categories;
  final ScrollController _scrollController = ScrollController();
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 80.0,
      child: Scrollbar(
        isAlwaysShown: true,
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          itemCount: _categories.length,
          itemBuilder: (BuildContext context, int index) {
            return FoodCard(
              categoryImagePath: _categories[index].categoryImagePath,
              categoryName: _categories[index].categoryName,
              categoryNumberOfItems: _categories[index].numberOfItems,
            );
          },
        ),
      ),
    );
  }
}
