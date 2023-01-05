import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Appointment/appointment.dart';

class CataractInfo extends StatefulWidget {
  const CataractInfo({Key? key}) : super(key: key);

  @override
  State<CataractInfo> createState() => _CataractInfoState();
}

class _CataractInfoState extends State<CataractInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>const ApointmentBar()));
              }, child: const Text('Book Appointment')),
          const SizedBox(width: 10,),
          ElevatedButton(
              onPressed: () {
                print('Contact us');
                //TODO
              }, child: const Text('Contact us'))
        ],
      ),
      backgroundColor: const Color(0xffAE98D7),
      appBar: AppBar(
        title: const Text(
          'CATARACT',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Material(
          color: const Color(0xffAE98D7),

          elevation: 3,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Container(
                       color: const Color(0xffAE98D7),
                       height: 100,
                      width: 200,
                      child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '     Blade-Free\nCataract Surgery',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ))),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    color: const Color(0xffAE98D7),
                    width: 150,
                    height: 100,
                    child: const Image(
                        image: AssetImage('assets/cataractsurgery.jpg')),
                  ),
                ],
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                  decoration:
                      BoxDecoration(
                          color: const Color(0xffAE98D7),
                          borderRadius: BorderRadius.circular(5.0)),
                  child: const Text(
                    "Point and purpose is the key to understanding types of paragraphs and kinds of paragraphs.In writing, the words point and purpose are almost synonymous. Your point is your purpose, and how you decide to make your point clear to your reader is also your purpose. Writers have a point and a purpose for every paragraph that they create.Writers write descriptive paragraphs because their purpose is to describe something. Their point is that something is beautiful or disgusting or strangely intriguing. Writers write persuasive and argument paragraphs because their purpose is to persuade or convince someone. Their point is that their reader should see things a particular way and possibly take action on that new way of seeing things. Writers write paragraphs of comparison because the comparison will make their point clear to their readers.The purpose of Pattern Based Writing: Quick & Easy Essay is to quickly and easily teach students how to organize information and make points clear. Then in the Writing with Purpose section of the writing program, students learn to apply their new writing strategies to different types, kinds, genres, and modes of writing. The truth is that it’s quick and easy to get students to write many different types of paragraphs when they have the right foundation.Put simply, all of the different types and kinds of paragraphs simply involve layering on a different purpose or intent. When students have the right foundation, it’s just that simple. What are you trying to achieve in this paragraph and in your whole composition? What is your purpose right here? Do you wish to describe? Do you want to evaluate? Is your goal to narrate? Is your intent to persuade?When students don’t have a proper foundation, these questions don’t mean much to them.  After Pattern Based Writing: Quick & Easy Essay, students say, “I get it! I finally get it! I can’t even read what I was writing before!”.",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
