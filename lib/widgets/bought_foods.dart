import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 340,
            child: Image.asset(
              "assets/images/breakfast.jpeg",
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
                      colors: [Colors.black, Colors.black12],
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
                      'Hot coffee',
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
                          '( 220 reviews )',
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
                      '1.0',
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
    );
  }
}
