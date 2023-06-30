import 'dart:convert';

import 'package:coffeebeansorter_mobile/api/constant.dart';
import 'package:coffeebeansorter_mobile/local/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //----------------------API calls------------------\\
  Future<Map<String,dynamic>> fetchUser() async {
    String token = await getToken();
    final response = await http.get(
        Uri.parse(userProfileURL),
        headers: {
          'Authorization' : 'Bearer $token'
        }
    );
    if(response.statusCode == 200){
      final Map <String, dynamic> data = json.decode(response.body);
      return data['user'];
    }else{
      throw Exception('Error');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: FutureBuilder(
            future: fetchUser(),
            builder: (BuildContext context, snapshot){
              if(snapshot.hasError){
                return const Text('404 error');
              }else if(snapshot.hasData){
                final data = snapshot.data!;
                return Column(
                  children: [
                    const SizedBox(height: 20),
                    Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1, color: Colors.black),
                            image: const DecorationImage(
                                image: NetworkImage('http://192.168.98.11:8000/storage/user_profile/ZRchGen0YysE9ZPxTS0JSB7QU2vT5qWDyuJKL4dq.jpg'),
                                fit: BoxFit.cover
                            )
                        )
                    ),
                    const SizedBox(height: 30),
                    Text('Name: ${data['name']}'),
                    const SizedBox(height: 5),
                    Text('Email: ${data['email']}'),
                    const SizedBox(height: 30),
                  ],
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
