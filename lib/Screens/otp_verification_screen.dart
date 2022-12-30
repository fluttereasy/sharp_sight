import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
import 'package:sharp_sight/Homescreen/home_screen.dart';
import 'package:sharp_sight/cubit/auth_cubit/auth_cubit.dart';
import 'package:sharp_sight/cubit/auth_cubit/auth_states.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? otpController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          elevation: 0,
          backgroundColor: const Color(0xff7850a8),
        ),
        backgroundColor: const Color(0xff7850a8),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Verification code',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
              child: Text(
                'we have sent the verification code to',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: Pinput(
                controller: otpController,
                length: 6,
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Resend OTP',
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is AuthLoggedInState) {
                  Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const HomeScreen()));
                } else if (state is AuthErrorState) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(state.error.toString()),
                    duration: const Duration(seconds: 4),
                  ));
                }
              },
              builder: (context, state) {
                if (state is AuthLoadingState) {
                  const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return BlocConsumer<AuthCubit, AuthState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: InkWell(
                        onTap: () {
                          BlocProvider.of<AuthCubit>(context)
                              .verifyOtp(otpController.text);
                        },
                        child: Ink(
                          height: 50.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.green[400],
                              borderRadius: BorderRadius.circular(20.0)),
                          child: const Center(
                            child: Text(
                              'Verify',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 2),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
