import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/appbar.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
import 'package:coffeebeansorter_mobile/local/editprofilepage.dart';
import 'package:flutter/material.dart';

class CustomerFeedbackPage extends StatelessWidget {
  const CustomerFeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70, // Adjust the height of the container as needed
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: [
                Text(
                  'Customer Feedback',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
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

          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(height: 1),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 320, // Adjust the width of the box as needed
                        height: 60, // Adjust the height of the box as needed
                        decoration: BoxDecoration(
                          color: Colors.brown,
                          // Replace with your desired color
                          borderRadius: BorderRadius.circular(
                            5, // Adjust the border radius as needed
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              // Replace with the desired shadow color
                              blurRadius: 7,
                              // Adjust the blur radius as needed
                              offset: const Offset(
                                  0, 3), // Adjust the offset of the shadow
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: ListTile(
                                leading: const CircleAvatar(
                                  child:
                                      Icon(Icons.person, color: Colors.white70),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1),
                                ),
                                tileColor: const Color(0xffA78585),
                                textColor: Colors.white,
                                title: Row(
                                  children: const [
                                    Expanded(
                                      child: Text(
                                        'Joephine Calapiz',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                trailing: const Icon(
                                    Icons.arrow_downward_rounded,
                                    color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
