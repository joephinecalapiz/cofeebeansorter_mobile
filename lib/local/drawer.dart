import 'package:coffeebeansorter_mobile/adminpages/tabs/history.dart';
import 'package:coffeebeansorter_mobile/pages/LoginPage.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFe38f3b),
      child: SizedBox(
        width: 230,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFCD7F32),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/logo.png'),
                // Specify radius if needed: radius: 50,
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
                  leading: const Icon(Icons.history, color: Colors.white),
                  title: const Text(
                    'History',
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoryPage(), // Replace `NewPage` with the destination page widget.
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Container(

                child: ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                  leading: const Icon(Icons.person_rounded, color: Colors.white),
                  title: const Text(
                    'Profile',
                    style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
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
                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
