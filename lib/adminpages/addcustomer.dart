import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/appbar.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
import 'package:flutter/material.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  _AddCustomerPageState createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pnumberController = TextEditingController();


  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    pnumberController.dispose();
    super.dispose();
  }

  void _saveData() {
    String name = nameController.text;
    String address = addressController.text;
    String pnumber = pnumberController.text;


    nameController.clear();
    addressController.clear();
    pnumberController.clear();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Sorting Details'),
          content: Text('Name: $name\nAddress: $address\nPhone Number: $pnumber'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Cancel'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100.0),
              child: TextButton(
                onPressed: () {

                  Navigator.pop(context);
                },
                child: const Text('Confirmed'),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Container(
          // Add a Container to wrap the body content
          padding: const EdgeInsets.all(20.0),
          child:
          Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              'Add Sorting Details', // need e change into saktong name kung unsa ang company ang gi click
              style: TextStyle(
                color: primaryTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300, // Adjust the width of the box as needed
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown, // Replace with your desired color
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Gloria Arabica Coffee Beans',
                    style: TextStyle(
                      color: primaryTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: nameController,

                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: addressController,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: pnumberController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: _saveData,
                          child: const Text('Save'),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
