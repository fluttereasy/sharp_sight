import 'package:flutter/material.dart';

class AppointmentBar extends StatefulWidget {
  const AppointmentBar({Key? key}) : super(key: key);

  @override
  State<AppointmentBar> createState() => _AppointmentBarState();
}

class _AppointmentBarState extends State<AppointmentBar> {
  @override
  Widget build(BuildContext context) {
    void updateList(String value){}
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffAE98D7),
          elevation: 0,
        ),
        backgroundColor: const Color(0xffAE98D7),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Book an Appointment',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),const SizedBox(height: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'Search Doctor or Speciality',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
