
import 'package:coffeebeansorter_mobile/api/constant.dart';
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
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 10,
        // Increase the toolbar height to provide additional space
        elevation: 20,
        backgroundColor: const Color(0xFF11101D),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(
                20), // Apply rounded corners to the bottom of the AppBar
          ),
        ),
        title: Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          // Add vertical margin to the container
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              // Add some left padding
              const Icon(Icons.search, color: Colors.grey),
              const SizedBox(width: 10),
              // Add space between the icon and the text field
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    isDense: true, // Reduce the height of the text field
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 8), // Adjust the vertical padding
                  ),
                  // Add the eventNames list as the search terms
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(width: 10),
              // Add some right padding
            ],
          ),
        ),
      ),

      drawer: Drawer(
        backgroundColor: const Color(0xFF11101D),
        child: SizedBox(
          width: 230,
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF11101D),
                  image: DecorationImage(
                    image: AssetImage('asset/logo.png'),
                    // fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Container(

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Container(

                  child: ListTile(
                    contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                    leading: const Icon(
                        Icons.arrow_back_rounded, color: Colors.white),
                    title: const Text(
                      'Profile',
                      style: TextStyle(color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {

                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  leading: const Icon(Icons.logout_sharp, color: Colors.white),
                  title: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

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
