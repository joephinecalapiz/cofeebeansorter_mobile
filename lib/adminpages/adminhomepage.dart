import 'package:coffeebeansorter_mobile/adminpages/tabs/customer.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/history.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/profile.dart';
import 'package:coffeebeansorter_mobile/adminpages/tabs/sorter.dart';
import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/customerpages/addsort.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

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
    AddSortPage(),
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
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.brown[300],
        style: TabStyle.fixedCircle, // Sets the style to a fixed convex circle shape
        items: const [
          TabItem(icon: Icons.history, title: 'History'),
          TabItem(icon: Icons.people_alt_rounded, title: 'Customers'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.people_alt_rounded, title: 'Sorter'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: _selectedIndex,
        onTap: _onItemTapped,
        activeColor: bottomNavBarBtnColor,
        color: Colors.grey[400], // Color for inactive tabs
      ),
    );
  }
}
