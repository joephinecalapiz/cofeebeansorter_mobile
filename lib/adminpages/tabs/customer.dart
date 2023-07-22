import 'dart:convert';

import 'package:coffeebeansorter_mobile/adminpages/addcustomer.dart';
import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/appbar.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
import 'package:coffeebeansorter_mobile/pages/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CustomerPage extends StatelessWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10), // Add space on the left and right sides
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'List of Customers',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigate to the new page when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddCustomerPage(), // Replace `NewPage` with the destination page widget.
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Transform.translate(
                    offset: const Offset(15, 0),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        'Add New',
                        style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFD2B48C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(
                            'asset/logo.png',
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Address',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
