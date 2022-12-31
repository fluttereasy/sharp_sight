import 'package:flutter/material.dart';

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
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 50,
                      width: 400,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.purpleAccent,
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://static.vecteezy.com/system/resources/previews/000/580/411/original/hospital-logo-and-symbols-template-icons-vector.jpg')),
                          borderRadius: BorderRadius.circular(20)),
                    );
                  }),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    height: 30,
                    width: double.infinity,
                    color: Colors.grey,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Our Services',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    )),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://www.verywellhealth.com/thmb/V8389WqQOWu3eq0PvPXMsqrD2gU=/1889x1587/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-548300195-59a350e90d327a00103d7c72.jpg'))),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
                            child: Container(
                              height: 20,
                              width: 100,
                              color: Colors.white,
                              child: const Center(
                                  child: Text(
                                'Cataract',
                                style: TextStyle(fontSize: 16),
                              )),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://i.ytimg.com/vi/cT4X3HYaTSo/maxresdefault.jpg'))),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
                            child: Container(
                              height: 20,
                              width: 100,
                              color: Colors.white,
                              child: const Center(
                                  child: Text(
                                'Lasik',
                                style: TextStyle(fontSize: 16),
                              )),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.prx3aPWKIcpl-6SrLoY51wHaHa?pid=ImgDet&rs=1'))),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
                            child: Container(
                              height: 20,
                              width: 100,
                              color: Colors.white,
                              child: const Center(
                                  child: Text(
                                'Retina',
                                style: TextStyle(fontSize: 16),
                              )),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(8),
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.pMXDxNJ8Y8aUsZpmqkM4UQHaEu?pid=ImgDet&rs=1'))),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 5, 5),
                            child: Container(
                              height: 20,
                              width: 100,
                              color: Colors.white,
                              child: const Center(
                                  child: Text(
                                'Cornea',
                                style: TextStyle(fontSize: 16),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    height: 30,
                    width: double.infinity,
                    color: Colors.grey,
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Testimonials',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    )),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  color: Colors.white,
                  child: const Text(
                    'Your practice is great.\n The services you provide are incredible and the patient experience you provide is like nothing else. You know these to be true, but are they known locally, nationally, or globally?Sure, your regulars spread the word about your practice to their social circles.\n But can you provide any evidence about how great your practice is outside of what you and your brand ambassadors say?That’s where patient testimonials come in. They’re proof to prospective clients that you’re as amazing as everyone says while keeping your regulars at ease.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        )),
      ),
    );
  }
}

// bottomNavigationBar: BlocConsumer<AuthCubit, AuthState>(
//           listener: (context, state) {
//             if (state is AuthLoggedOutState) {
//               Navigator.popUntil(context, (route) => route.isFirst);
//             }
//           },
//           builder: (context, state) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
//               child: GNav(
//                   backgroundColor: Colors.grey,
//                   color: Colors.black,
//                   tabBackgroundColor: Colors.white,
//                   tabs: [
//                      GButton(
//                       icon: Icons.home,
//                       text: 'Home',
//                       gap: 10,
//                     ),
//                      GButton(
//                       onPressed: (){
//                         Navigator.push(context, CupertinoPageRoute(builder: (context)=>DashBoard()));
//                       },
//                       icon: Icons.dashboard_customize_rounded,
//                       text: 'Dashboard',
//                     ),
//                     const GButton(
//                       icon: Icons.person_outline,
//                       text: 'Profile',
//                     ),
//                     GButton(
//                       icon: Icons.exit_to_app,
//                       text: 'Exit',
//                       onPressed: () {
//                         BlocProvider.of<AuthCubit>(context).logOut();
//                         Navigator.pushReplacement(
//                             context,
//                             CupertinoPageRoute(
//                                 builder: (context) => const OtpScreen()));
//                       },
//                     ),
//                   ]),
//             );
//           },
//         ),

// Container(
//                         margin: const EdgeInsets.all(8),
//                         height: 30,
//                         width: 100,
//                         child: Text('Cataract'),
//                       ),
//                       Container(
//                         margin: const EdgeInsets.all(8),
//                         height: 30,
//                         width: 100,
//                         child: Text('Cataract'),
//                       ),
//                       Container(
//                         margin: const EdgeInsets.all(8),
//                         height: 30,
//                         width: 100,child: Text('Cataract'),
//
//                       ),
//                       Container(
//                         margin: const EdgeInsets.all(8),
//                         height: 30,
//                         width: 100,
//                         child: Text('Cataract'),
//                       ),
