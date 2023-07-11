
import 'package:coffeebeansorter_mobile/adminpages/tabs/history.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/profile.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/sorter.dart';
import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/customerpages/tabscustomer/customerhistory.dart';
import 'package:coffeebeansorter_mobile/customerpages/tabscustomer/explorepage.dart';
import 'package:coffeebeansorter_mobile/customerpages/tabscustomer/favoritecustomer.dart';

import 'package:flutter/material.dart';

class HomePageCustomer extends StatefulWidget {
  HomePageCustomer({Key? key}) : super(key: key);

  @override
  State<HomePageCustomer> createState() => _HomePageCustomerState();
}

class _HomePageCustomerState extends State<HomePageCustomer> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    ExplorePage(),
    HistoryCustomerPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  static const List<String> _appBarTitles = <String>[
    'Explore',
    'History',
    'Sorter',
    'Profile',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.brown[300],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: bottomNavBarBtnColor,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore_rounded,
              size: 30,
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              size: 30,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_rounded,
              size: 30,
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
