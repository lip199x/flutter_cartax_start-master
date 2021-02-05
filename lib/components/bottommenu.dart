import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class CarTaxBottomMenu extends StatelessWidget {
  final _currentTabIndex;
  final Function setMenu;

  CarTaxBottomMenu(this.setMenu, this._currentTabIndex);
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      backgroundColor: Colors.black,
      selectedIndex: _currentTabIndex,
      iconSize: 30,
      items: [
        BottomNavyBarItem(
          title: Text("Home"),
          icon: Icon(Icons.home, color: Colors.blue),
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: Text("Calculate"),
          icon: Icon(Icons.calculate, color: Colors.blue),
          activeColor: Colors.white,
        ),
        BottomNavyBarItem(
          title: Text("About"),
          icon: Icon(Icons.contact_support, color: Colors.blue),
          activeColor: Colors.white,
        ),
      ],
      onItemSelected: (newIndex) {
        setMenu(newIndex);
      },
    );
  }
}
