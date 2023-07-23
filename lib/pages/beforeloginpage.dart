import 'package:coffeebeansorter_mobile/adminpages/adminhomepage.dart';
import 'package:coffeebeansorter_mobile/customerpages/customerhomepage.dart';
import 'package:coffeebeansorter_mobile/local/utility.dart';
import 'package:flutter/material.dart';

class BeLoginPage extends StatelessWidget {
  const BeLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 360;

    return Container(
      width: double.infinity,
      height: 800 * size,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40 * size),
            SizedBox(
              width: 210 * size,
              height: 190 * size,
              child: Image.asset(
                'asset/bean.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 40 * size),
            SizedBox(
              width: 300 * size,
              height: 62 * size,
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  width: 337 * size,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff7e1e18),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 24 * size,
                        fontWeight: FontWeight.w800,
                        height: 1.2125,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20 * size),
            buildCompanyWidget(size, Colors.green, 'Gloria Arabica', 'Cogon CDO', '09266907134', 'asset/bean.png'),
            SizedBox(height: 20 * size),
            buildCompanyWidget(size, Colors.orange, 'Bike Coffee', 'Lapasan CDO', '0987654321', 'asset/logo.png'),
            SizedBox(height: 20 * size),
            buildCompanyWidget(size, Colors.blue, 'Java Beans', 'City X', '0123456789', 'asset/bean.png'),
            SizedBox(height: 20 * size),
          ],
        ),
      ),
    );
  }

  Widget buildCompanyWidget(double size, Color color, String name, String location, String phone, String imageAsset) {
    return Container(
      width: 300 * size,
      height: 100 * size,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10 * size, top: 7 * size, bottom: 7 * size),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20 * size),
              child: Image.asset(
                imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10 * size),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12 * size),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2 * size),
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 20 * size,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2 * size),
                child: Text(
                  location,
                  style: TextStyle(
                    fontSize: 15 * size,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2 * size),
                child: Text(
                  phone,
                  style: TextStyle(
                    fontSize: 15 * size,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
