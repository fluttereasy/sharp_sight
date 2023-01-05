import 'package:flutter/material.dart';
import 'package:sharp_sight/Screens/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController numController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                      width: double.infinity,
                      child: Image(
                          width: 100,
                          image: AssetImage('assets/sharpsightlogo.jpg'))),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          letterSpacing: 3,
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 23),
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: numController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.purple)),
                      hintText: 'Mobile No.',
                      labelText: 'Mobile No.',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: passController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.purple)),
                      hintText: 'Password',
                      labelText: 'Password',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: Material(
                      elevation: 20,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Verify',
                            style: TextStyle(
                              letterSpacing: 3,
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OtpScreen()));
                      },
                      child: const Text(
                        'Login with OTP',
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
