import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              hintText: 'Search for foods',
              suffixIcon: Icon(
                Icons.search_sharp,
                color: Colors.black,
              ),
              border: InputBorder.none),
        ),
      ),
    );
  }
}
