import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sharp_sight/Screens/otp_screen.dart';
import 'package:sharp_sight/cubit/auth_cubit/auth_cubit.dart';
import 'Screens/navigation_bar_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var auth = FirebaseAuth.instance;
  var isLogin =false;

  checkifLogin() async{
     auth.authStateChanges().listen((User? user) {
      if(user!=null && mounted){
       isLogin=true;
      }
    });
  }

  @override
  void initState() {
    checkifLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.purple),
        debugShowCheckedModeBanner: false,
        home: isLogin? const NavigationBarScreen() : const OtpScreen(),
      ),
    );
  }
}