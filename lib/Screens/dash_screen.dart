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
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://t3.ftcdn.net/jpg/01/38/42/24/500_F_138422416_VyRbaYCT43pLqXlZdWthpt70iTfTdU8z.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Appointment',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://image.freepik.com/free-icon/video-call_318-1336.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Video Call',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/vectors/eyelid-surgery-procedure-before-the-main-steps-excess-skin-and-fat-vector-id1047225272?k=6&m=1047225272&s=612x612&w=0&h=6pva49TOM9Q4XAKp3PER5kwzT5_OQp0umiwHZ9pDYv0=')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Eye Surgery Assistant',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/vectors/eyelid-surgery-procedure-before-the-main-steps-excess-skin-and-fat-vector-id1047225272?k=6&m=1047225272&s=612x612&w=0&h=6pva49TOM9Q4XAKp3PER5kwzT5_OQp0umiwHZ9pDYv0=')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Quick Appointment',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/OIP.smZY2jt67-7Q4hJ0B8UlfQHaHa?pid=ImgDet&rs=1')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'YouTube Feeds',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://png.pngtree.com/png-vector/20190504/ourlarge/pngtree-star-logo-graphic-design-template-vector-png-image_1020003.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Ratings',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
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
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Glasses',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://static.vecteezy.com/system/resources/previews/000/637/367/original/vector-medicine-icon-symbol-sign.jpg')),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'Medicine',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
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
