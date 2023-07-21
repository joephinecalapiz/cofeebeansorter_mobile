
import 'package:coffeebeansorter_mobile/adminpages/tabs/customer.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/history.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/profile.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/sorter.dart';
import 'package:coffeebeansorter_mobile/api/constant.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HistoryPage(),
    CustomerPage(),
    SorterPage(),
    ProfilePage(),
  ];

  static const List<String> _appBarTitles = <String>[
    'Customers',
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
              Icons.history,
              size: 30,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt_rounded,
              size: 30,
            ),
            label: 'Customers',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people_alt_rounded,
              size: 30,
            ),
            label: 'Sorter',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
