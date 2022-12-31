import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sharp_sight/Screens/navigation_bar_screen.dart';
import 'package:sharp_sight/Screens/login_screen.dart';
import 'package:sharp_sight/Screens/otp_verification_screen.dart';
import 'package:sharp_sight/cubit/auth_cubit/auth_cubit.dart';
import 'package:sharp_sight/cubit/auth_cubit/auth_states.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const NavigationBarScreen()));
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(100, 40),
                  backgroundColor: const Color(0xff0C3B2E),
                  foregroundColor: Colors.white),
              child: const Text(
                'Continue as GUEST',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                      width: double.infinity,
                      child: Image(
                          width: 100,
                          image: AssetImage('assets/sharpsightlogo.jpg'))),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'Sign up with OTP',
                      style: TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: _mobileNumberController,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Colors.purple, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    const BorderSide(color: Colors.purple)),
                            hintText: 'Mobile No.',
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 20),
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (state is AuthCodeSentState) {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (context) =>
                                        const OtpVerifyScreen()));
                          }
                        },
                        builder: (context, state) {
                          if (state is AuthLoadingState) {
                            const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return SizedBox(
                            height: 55,
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Material(
                                elevation: 20,
                                child: ElevatedButton(
                                    onPressed: () {
                                      String phoneNumber =
                                          "+91${_mobileNumberController.text}";
                                      BlocProvider.of<AuthCubit>(context)
                                          .sendOtp(phoneNumber);
                                    },
                                    child: const Text(
                                      'Get OTP',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ),
                            ),
                          );
                        },
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                CupertinoPageRoute(
                                    builder: (BuildContext context) =>
                                        const LoginScreen()));
                          },
                          child: const Text(
                            'Already have an account? Login here',
                            style: TextStyle(color: Colors.black),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
