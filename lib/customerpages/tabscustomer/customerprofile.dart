import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
import 'package:coffeebeansorter_mobile/local/editprofilepage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfilePageCustomer extends StatefulWidget {
  const ProfilePageCustomer({Key? key}) : super(key: key);

  @override
  State<ProfilePageCustomer> createState() => _ProfilePageCustomerState();
}

class _ProfilePageCustomerState extends State<ProfilePageCustomer> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: kToolbarHeight + 160,
        elevation: 10,
        backgroundColor: const Color(0xffC57272),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 60,
                backgroundImage: AssetImage(
                  'asset/logo.png',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'joephinecalapiz7@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'CUSTOMER',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Profile Information',
                          style: TextStyle(
                            color: primaryTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return EditPage(); // Replace with your edit page widget
                            },
                          );
                        },
                        icon: const Icon(Icons.edit),
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: const Icon(Icons.person, color: Colors.white70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    tileColor: const Color(0xffA78585),
                    textColor: Colors.black,
                    title: Row(
                      children: const [
                        Expanded(
                          flex: 4,
                          child: Text('Name:'),
                        ),
                        Expanded(
                          flex: 8,
                          child: Text('Joephine Calapiz'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: const Icon(Icons.email_rounded, color: Colors.white70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    tileColor: const Color(0xffA78585),
                    textColor: Colors.black,
                    title: Row(
                      children: const [
                        Expanded(
                          flex: 4,
                          child: Text('Email:'),
                        ),
                        Expanded(
                          flex: 8,
                          child: Text('joephinecalapiz7@gmail.com'),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: const Icon(Icons.numbers_rounded, color: Colors.white70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    tileColor: const Color(0xffA78585),
                    textColor: Colors.black,
                    title: Row(
                      children: const [
                        Expanded(
                          flex: 4,
                          child: Text('Contact number:'),
                        ),
                        Expanded(
                          flex: 8,
                          child: Text('09518052760'),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListTile(
                    leading: const Icon(Icons.location_city_rounded, color: Colors.white70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1),
                    ),
                    tileColor: const Color(0xffA78585),
                    textColor: Colors.black,
                    title: Row(
                      children: const [
                        Expanded(
                          flex: 4,
                          child: Text('Address:'),
                        ),
                        Expanded(
                          flex: 8,
                          child: Text('Zone 7 Acacia St. CDO'),
                        ),
                      ],
                    ),
                  ),
                ),




              ],
            ),

        ),

    );
  }
}
