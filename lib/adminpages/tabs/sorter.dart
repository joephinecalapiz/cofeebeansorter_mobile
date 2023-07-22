
import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/appbar.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
import 'package:coffeebeansorter_mobile/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class SorterPage extends StatefulWidget {
  const SorterPage({Key? key}) : super(key: key);

  @override
  State<SorterPage> createState() => _SorterPageState();
}

class _SorterPageState extends State<SorterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),

      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'List of Sorter',
                            style: TextStyle(
                              color: primaryTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}
