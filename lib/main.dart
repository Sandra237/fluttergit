import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('title appbar'),
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.red, // Text color
                          backgroundColor: Colors.orange, // Background color
                        ),
                        onPressed: () {
                          setState(() {
                            buttonName = 'clicked';
                          });
                        },
                        child: Text(buttonName),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Next();
                              },
                            ),
                          );
                        },
                        child: const Text('click'),
                      ),
                    ],
                  ),
                )
              : Image.asset('images/sa.png'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'settings',
              icon: Icon(Icons.settings),
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

// class Prev extends StatefulWidget {
//   const Prev({super.key});

//   @override
//   State<Prev> createState() => _PrevState();
// }

// class _PrevState extends State<Prev> {
//   String buttonName = 'click';
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('title appbar'),
//       ),
//       body: Center(
//         child: currentIndex == 0
//             ? Container(
//                 width: double.infinity,
//                 height: double.infinity,
//                 color: Colors.green,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.red, // Text color
//                         backgroundColor: Colors.orange, // Background color
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           buttonName = 'clicked';
//                         });
//                       },
//                       child: Text(buttonName),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (BuildContext context) {
//                               return const Next();
//                             },
//                           ),
//                         );
//                       },
//                       child: const Text('click'),
//                     ),
//                   ],
//                 ),
//               )
//             : Image.asset('images/sa.png'),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(
//             label: 'Home',
//             icon: Icon(Icons.home),
//           ),
//           BottomNavigationBarItem(
//             label: 'settings',
//             icon: Icon(Icons.settings),
//           ),
//         ],
//         currentIndex: currentIndex,
//         onTap: (int index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
