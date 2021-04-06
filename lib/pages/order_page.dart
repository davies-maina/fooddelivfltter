import 'package:flutter/material.dart';
import 'package:food_delivery/pages/signin_page.dart';
import 'package:food_delivery/widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Column(
          children: [
            OrderCard(),
            OrderCard(),
            OrderCard(),
            OrderCard(),
          ],
        ),
      ]),
      bottomNavigationBar: _buildTotalContainer(),
    );
  }

  Widget _buildTotalContainer() {
    return Container(
      height: 200,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            dense: true,
            visualDensity: VisualDensity(vertical: -4.0),
            leading: Text("Cart total"),
            trailing: Text("23.0"),
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(vertical: -4.0),
            leading: Text("Discount"),
            trailing: Text("23.0"),
          ),
          Divider(
            height: 20.0,
            color: Colors.amber,
          ),
          ListTile(
            dense: true,
            visualDensity: VisualDensity(vertical: -4.0),
            leading: Text("Subtotal"),
            trailing: Text("23.0"),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => SignInPage()));
              },
              child: Text(
                "Proceed to checkout",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            )),
          ),
        ],
      ),
    );
  }
}
