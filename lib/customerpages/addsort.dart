import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/appbar.dart';
import 'package:coffeebeansorter_mobile/local/drawer.dart';
import 'package:flutter/material.dart';

class AddSortPage extends StatefulWidget {
  const AddSortPage({Key? key}) : super(key: key);

  @override
  _AddSortPageState createState() => _AddSortPageState();
}

class _AddSortPageState extends State<AddSortPage> {
  TextEditingController kiloController = TextEditingController();
  TextEditingController commentsController = TextEditingController();

  @override
  void dispose() {
    kiloController.dispose();
    commentsController.dispose();
    super.dispose();
  }

  void _saveData() {
    String kilo = kiloController.text;
    String comments = commentsController.text;


    kiloController.clear();
    commentsController.clear();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Data Saved'),
          content: Text('Kilo: $kilo\nComments: $comments'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Confirmed'),
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
      body: Container(
        // Add a Container to wrap the body content
        padding: const EdgeInsets.all(20.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            'Sorting Company Details', // need e change into saktong name kung unsa ang company ang gi click
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
                  controller: kiloController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Kilo',
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: commentsController,
                  maxLines: 7,
                  decoration: const InputDecoration(
                    labelText: 'Comments',
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: _saveData,
                  child: const Text('Save'),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
