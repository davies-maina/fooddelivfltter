import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double rating;

  BoughtFoods(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.discount,
      this.rating});
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 340,
              child: Image.asset(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                height: 60,
                width: 340,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black, Colors.black45],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter)),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              right: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border,
                            color: Colors.amber,
                            size: 20,
                          ),
                          Text(
                            '( ${widget.rating} reviews )',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        widget.price.toString(),
                        style: TextStyle(color: Colors.amber, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('min order',
                          style: TextStyle(color: Colors.white70, fontSize: 16))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
