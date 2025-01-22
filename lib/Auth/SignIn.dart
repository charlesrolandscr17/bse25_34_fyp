// ignore_for_file: file_names

import 'package:bse25_34_fyp/Auth/SignUp.dart';
import 'package:bse25_34_fyp/Screens/Dashboard.dart';
import 'package:flutter/material.dart';
import '../Theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Image(
                    image: AssetImage("assets/Icons/1min_Logo.png"),
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(color: AppColors.grey),
                    hintText: "Enter your Email",
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1, color: AppColors.deeppurple),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your email address';
                    }
                    // Check if the entered email has the right format
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    // Return null if the entered email is valid
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: AppColors.grey),
                    hintText: "Enter your Password",
                    prefixIcon: const Icon(
                      Icons.lock_open_outlined,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 1, color: AppColors.deeppurple),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 1, color: Colors.redAccent),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your email address';
                    }
                    // Check if the entered email has the right format
                    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    // Return null if the entered email is valid
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password ?",
                      style: TextStyle(color: AppColors.grey),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DashBoard()));
                    },
                    child: const Text("Sign In"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.deeppurple,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                        },
                        child: const Text(
                          " Sign Up",
                          style: TextStyle(color: AppColors.deeppurple),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(children: <Widget>[
                  Expanded(
                      child: Divider(
                    indent: 40,
                    endIndent: 20,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Or"),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Divider(
                    indent: 20,
                    endIndent: 40,
                  )),
                ]),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton.icon(
                      label: const Text('Google'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.redAccent,
                        side: BorderSide(
                            width: 1.0, color: Colors.redAccent.withAlpha(50)),
                      ),
                      icon: const Icon(Icons.g_mobiledata),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                    OutlinedButton.icon(
                      label: const Text('Facebook'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.blueAccent,
                        side: BorderSide(
                            width: 1.0, color: Colors.blue.withAlpha(50)),
                      ),
                      icon: const Icon(Icons.facebook),
                      onPressed: () {
                        print('Pressed');
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
