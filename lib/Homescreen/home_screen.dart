import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sharp_sight/Screens/otp_screen.dart';
import 'package:sharp_sight/cubit/auth_cubit/auth_cubit.dart';
import 'package:sharp_sight/cubit/auth_cubit/auth_states.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white, elevation: 0),
        bottomNavigationBar: BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthLoggedOutState) {
              Navigator.popUntil(context, (route) => route.isFirst);
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              child: GNav(
                  backgroundColor: Colors.grey,
                  color: Colors.black,
                  tabBackgroundColor: Colors.white,
                  tabs: [
                    const GButton(
                      icon: Icons.home,
                      text: 'Home',
                      gap: 10,
                    ),
                    const GButton(
                      icon: Icons.dashboard_customize_rounded,
                      text: 'Dashboard',
                    ),
                    const GButton(
                      icon: Icons.person_outline,
                      text: 'Profile',
                    ),
                    GButton(
                      icon: Icons.exit_to_app,
                      text: 'Exit',
                      onPressed: () {
                        BlocProvider.of<AuthCubit>(context).logOut();
                        Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const OtpScreen()));
                      },
                    ),
                  ]),
            );
          },
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 150,
              decoration: const BoxDecoration(color: Colors.yellow),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    width: 160.0,
                    color: Colors.red,
                    child: Text('data'),
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
