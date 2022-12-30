import 'package:flutter/material.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        body: SingleChildScrollView(
          child: GridView.builder(
              itemCount: 20,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: const DecorationImage(
                    image: NetworkImage(
                        "https://st3.depositphotos.com/10866344/36413/v/380/depositphotos_364130174-stock-illustration-blue-camera-icon-live-media.jpg"),
                  ),
                ));
              }),
        ));
  }
}
