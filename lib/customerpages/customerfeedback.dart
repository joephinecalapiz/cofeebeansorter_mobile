
import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/appbar.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
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
            child: Text(
              'Customer Feedback', // need e change into saktong name kung unsa ang company ang gi click
              style: TextStyle(
                color: primaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
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
                        height: 400, // Adjust the height of the box as needed
                        decoration: BoxDecoration(
                          color: Colors.brown, // Replace with your desired color
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
                            Align(
                              alignment: Alignment.topLeft,
                              child: Transform.scale(
                                scale: 0.9, // Adjust the scale value as needed
                                child: const SizedBox(
                                  width: 500,
                                  // Adjust the width of the image as needed
                                  height: 200,
                                  // Adjust the height of the image as needed
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('asset/logo.png'),
                                        // Replace with the actual asset path of your image
                                        fit: BoxFit.cover,
                                        // Adjust the fit to maintain the aspect ratio and fill the available space
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'Gloria Arabica Coffee Beans',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    '24+ customer',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),

                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Row(
                                children: const [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Ororama Cagayan de Oro city',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
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
