import 'package:flutter/material.dart';
import 'package:toturial/screen/cart.dart';
import 'package:toturial/screen/home.dart';
import 'package:toturial/screen/near.dart';
import 'package:toturial/screen/profile.dart';

class FoodLayout extends StatefulWidget {
  const FoodLayout({Key key}) : super(key: key);

  @override
  FoodLayoutState createState() => FoodLayoutState();
}

class FoodLayoutState extends State<FoodLayout> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NearByScreen(),
    CartScreen(),
    ProfileScren()
  ];

  void _setPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
            backgroundColor: Colors.black87,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'Neaer by',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _setPage),
      ),
    );
  }
}
