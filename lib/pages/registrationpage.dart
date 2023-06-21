import 'dart:convert';


import 'package:coffee_bean_mobile/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'LoginPage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submitForm() async{
    String name = _nameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    final body = {
      'name': name,
      'email' : email,
      'password' : password,
    };
    final response = await http.post(
        Uri.parse(registerURL),
        body: jsonEncode(body),
        headers: {'Content-Type': 'application/json'}
    );

    print('Name: $name');
    print('Email: $email');
    print('Password: $password');


    // Clear the form fields
    _nameController.clear();
    _emailController.clear();
    _passwordController.clear();


    // Show a success dialog
    if(response.statusCode == 200){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Success'),
          content: const Text('Sign-up successful!'),
          actions: [
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
    }
  }
  var formKey = GlobalKey<FormState>();
  bool _isHidden = true;

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Container(
                    width: 200,
                    height: 150,
                    child: Image.asset('asset/logo.png'),
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: Text(
                    "Welcome KaPeers!",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(height: 16),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          hintText: 'Full Name',
                          prefixIcon: Icon(Icons.person),
                        ),
                        validator: (value) {
                          return (value == '') ? 'Please enter value' : null;
                        },
                      ),

                      const SizedBox(height: 15),
                      TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          prefixIcon: Icon(Icons.mail_outline_outlined),
                        ),
                        validator: (value) {
                          return (value == '') ? 'Please enter value' : null;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            prefixIcon: const Icon(Icons.lock),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            )
                        ),
                        validator: (value) {
                          return (value == '') ? 'Please enter value' : null;
                        },
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            prefixIcon: const Icon(Icons.lock),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isHidden
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            )
                        ),
                        validator: (value) {
                          return (value == '') ? 'Please enter value' : null;
                        },
                      ),

                      const SizedBox(height: 25),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.brown),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0))),
                        ),
                        onPressed: () async {
                          var isFormValid = formKey.currentState!.validate();
                          if (isFormValid) {
                            // Process the sign-up logic here
                            _submitForm();

                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Invalid credentials')),
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                          width: Get.width * 0.6,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? '),
                    GestureDetector(
                      onTap: () => Get.to(
                            () => const LoginScreen(),
                        transition: Transition.cupertino,
                      ),
                      child: const Text(
                        'Log In.',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),


                    ),
                  ],

                ),
                const SizedBox(height: 25),


                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),

                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                  ),
                  onPressed: () async {
                    var isFormValid = formKey.currentState!.validate();
                    if (isFormValid) {
                      // Process the sign-up logic here
                      _submitForm();

                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invalid credentials')),
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    width: Get.width * 0.6,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Text(
                      "Continue with Google",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],

            ),

          ),
        ),
      ),
    );
  }
}