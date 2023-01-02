import 'package:flutter/material.dart';

class DashScreen extends StatefulWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.purple,
          body: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0),
              primary: false,
              padding: const EdgeInsets.all(20),
              children: [
                InkWell(
                  onTap: () {
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/appointment.jpg'),
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey),
                        child: const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Appointment',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                letterSpacing: 3),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/videocall.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Arrange Call',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/eyesurgery.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Surgery',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/eyesurgery.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Quick Appointment',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/youtube.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Youtube Feeds',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/rating.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Ratings',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://superawesomevectors.com/wp-content/uploads/2017/06/glasses-free-flat-vector-icon-800x566.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Glasses',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/medicine.png')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 140, 8, 6),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey),
                      child: const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Medicine',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              letterSpacing: 3),
                        ),
                      ),
                    ),
                  ),
                ),
              ])),
    );
  }
}

// GridView.count(
//         crossAxisCount: 2,
//         crossAxisSpacing: 10.0,
//         mainAxisSpacing: 10.0,
//         shrinkWrap: true,
//         children: List.generate(
//           20,
//           (index) {
//             return Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   image: DecorationImage(
//                     image: NetworkImage('img.png'),
//                     fit: BoxFit.cover,
//                   ),
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20.0),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
