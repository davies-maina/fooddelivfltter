import 'dart:ui';

import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 70,
              width: 40,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_drop_up, color: Colors.amber),
                    onTap: () {},
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 15),
                  ),
                  InkWell(
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.amber,
                      ),
                      onTap: () {})
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                        offset: Offset(0, 5))
                  ],
                  image: DecorationImage(
                      image: AssetImage('assets/images/lunch.jpeg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Grilled chicken",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "3.0",
                  style: TextStyle(fontSize: 15, color: Colors.amber),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 35.0,
                  width: 120,
                  child: Scrollbar(
                    isAlwaysShown: true,
                    controller: _scrollController,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      controller: _scrollController,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Text(
                                "chicken",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  "x",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Text(
                                "chicken",
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "x",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              child: Icon(Icons.cancel),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
