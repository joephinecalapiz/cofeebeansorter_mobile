import 'package:coffeebeansorter_mobile/adminpages/tabs/tab/page_one.dart';
import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/appbar.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
import 'package:coffeebeansorter_mobile/model/user.dart';
import 'package:coffeebeansorter_mobile/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  List pending = [
    User(
      name: 'Pending',
      email: 'Me',
      role: 21,
    ),
  ];

  List finished = [
    User(
      name: 'Finished',
      email: 'Me',
      role: 21,
    ),
  ];

  List cancel = [
    User(
      name: 'Cancelled',
      email: 'Me',
      role: 21,
    ),
  ];

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
          indicator: const ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            color: Color(0xFF3a506b),
          ),
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xFF3a506b),
          tabs: const [
            Tab(child: Text('Pending')),
            Tab(child: Text('Finished')),
            Tab(child: Text('Cancelled')),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
      body: TabBarView(
        controller: tabController,
        children: [
          PageOne(family: pending),
          PageOne(family: finished),
          PageOne(family: cancel),
        ],
      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //     children: [
      //       Column(
      //         children: [
      //           Column(
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Padding(
      //                     padding: const EdgeInsets.all(20),
      //                     child: Text(
      //                       'Coffee Bean Sorted',
      //                       style: TextStyle(
      //                         color: primaryTextColor,
      //                         fontWeight: FontWeight.bold,
      //                         fontSize: 25,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ],
      //           ),
      //
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
