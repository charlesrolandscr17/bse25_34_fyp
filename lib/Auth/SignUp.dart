import 'package:bse25_34_fyp/Auth/OTP_Verification.dart';
import 'package:bse25_34_fyp/Auth/SignIn.dart';
import 'package:bse25_34_fyp/Screens/Dashboard.dart';
import 'package:bse25_34_fyp/Theme.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool agree = false;
  final _registrationKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _namesController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _password;
  String? _confirmPassword;
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _namesController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateNames(String? value) {
    if (value == null || value.isEmpty) {
      return 'Names cannot be empty';
    }

    return null;
  }

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? password, String? confirmPassword) {
    if (password == null || password.isEmpty) {
      return 'Password cannot be empty';
    }
    if (password.length < 6) {
      return 'Password must be at least 6 characters';
    }
    if (confirmPassword != null && password != confirmPassword) {
      return 'Passwords do not match';
    }
    return null;
  }

  void _submitForm() {
    if (_registrationKey.currentState != null &&
        _registrationKey.currentState!.validate()) {
      // Form is valid, show a SnackBar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Check your registered email for your OTP')),
      );

      // Delay navigation to ensure SnackBar is shown
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const OTP_Verification()));
      });
    } else {
      // Form is invalid, show an error message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please check your  email or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Registration",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Form(
              key: _registrationKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Let's Get Started",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: AppColors.deeppurple),
                  ),
                  const Text(
                    "Create an account to get all features",
                    style: TextStyle(color: AppColors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      labelStyle: const TextStyle(color: AppColors.grey),
                      hintText: "Enter your Full Name",
                      prefixIcon: const Icon(
                        Icons.person_outline,
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
                    validator: _validateNames,
                  ),
                  const SizedBox(
                    height: 20,
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
                    validator: _validateEmail,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
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
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    onChanged: (value) => _password = value,
                    validator: (value) =>
                        _validatePassword(value, _confirmPassword),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: const TextStyle(color: AppColors.grey),
                      hintText: "Re-enter Your password",
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
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    onChanged: (value) => _confirmPassword = value,
                    validator: (value) => _validatePassword(value, _password),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: agree,
                        onChanged: (value) {
                          setState(() {
                            agree = value ?? false;
                          });
                        },
                      ),
                      const Text(
                        'Agree to our privacy & policy',
                        overflow: TextOverflow.ellipsis,
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
                      onPressed: agree ? _submitForm : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.deeppurple,
                      ),
                      child: const Text("Sign Up"),
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
                                    builder: (context) => const SignIn()));
                          },
                          child: const Text(
                            " Sign In",
                            style: TextStyle(color: AppColors.deeppurple),
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
      ),
    );
  }
}
