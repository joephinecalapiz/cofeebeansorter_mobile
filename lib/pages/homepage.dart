
import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/tabs/customer.dart';
import 'package:coffeebeansorter_mobile/tabs/history.dart';
import 'package:coffeebeansorter_mobile/tabs/profile.dart';
import 'package:coffeebeansorter_mobile/tabs/sorter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    CustomerPage(),
    HistoryPage(),
    SorterPage(),
    ProfilePage(),
  ];

  static const List<String> _appBarTitles = <String>[
    'Customers',
    'History',
    'Add User',
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
              Icons.people_alt_sharp,
              size: 30,
            ),
            label: 'Customers',
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
