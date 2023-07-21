
import 'package:coffeebeansorter_mobile/adminpages/adminhomepage.dart';
import 'package:coffeebeansorter_mobile/customerpages/customerhomepage.dart';
import 'package:coffeebeansorter_mobile/local/utility.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width / 360;

    return Container(
      width: double.infinity,
      height: 800 * size,
      color: const Color(0xff19191c),
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.9,
              child: Container(
                color: const Color(0xFFE3DCDA),
              ),
            ),
          ),
          Positioned(
            left: -150 * size,
            top: -100 * size,
            child: Align(
              child: SizedBox(
                width: 327 * size,
                height: 253 * size,
                child: Image.asset(
                  'asset/circle.png',
                  // Replace with the actual asset path of your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 60 * size,
            top: 100 * size,
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 230 * size,
                height: 200 * size,
                  child: Image.asset(
                    'asset/bean.png',
                    // Replace with the actual asset path of your image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

          Positioned(
            left: 20 * size,
            top: 350 * size,
            child: SingleChildScrollView(
              // Add SingleChildScrollView
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Get things done!',
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 30 * size,
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Lorem ipsum dolor sit amet \nconsectetur. Hac ullamcorper \nodio luctus odio amet sit eu\nmauris. '
                        'Quam id risus aenean \nsemper scelerisque etiam. \nCommodo diam.',
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 20 * size,
                      fontWeight: FontWeight.w400,
                      height: 1.3,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 20 * size,
            top: 688 * size,
            child: SizedBox(
              width: 300 * size,
              height: 62 * size,
              child: TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomePage()),
                ),
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Container(
                  width: 337 * size,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xff7e1e18),
                  ),
                  child: Center(
                    child: Center(
                      child: Text(
                        'Get Started --->',
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
            ),
          ),
        ],
      ),
    );
  }
}
