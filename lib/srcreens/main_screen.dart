import 'package:flutter/material.dart';
import 'package:food_delivery/pages/favorites_page.dart';
import 'package:food_delivery/pages/home_page.dart';
import 'package:food_delivery/pages/order_page.dart';
import 'package:food_delivery/pages/profile_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int currentTabIndex = 0;
  List<Widget> pages;
  HomePage homePage;
  OrderPage orderPage;
  FavoritesPage favoritesPage;
  ProfilePage profilePage;
  Widget currentPage;
  void initState() {
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    favoritesPage = FavoritesPage();
    profilePage = ProfilePage();
    pages = [homePage, orderPage, favoritesPage, profilePage];
    currentPage = homePage;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), label: "Orders"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        ],
      ),
      body: currentPage,
    );
  }
}
