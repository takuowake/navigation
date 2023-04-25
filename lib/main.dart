import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme
        .of(context)
        .primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     initialRoute: '/',
//     routes: {
//       '/': (context) => const FirstScreen(),
//       '/appbar_screen': (context) => const AppBarScreen(),
//       '/bottom_navigation_bar_screen': (context) => const BottomNavigationBarScreen(),
//       '/drawer_screen': (context) => const DrawerScreen(),
//       '/dialog_screen': (context) => DialogScreen(),
//     },
//   ));
// }
//
// /// AppBar
// class AppBarScreen extends StatelessWidget {
//   const AppBarScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('AppBar Example'),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.search),
//               onPressed: () {
//                 // Search action
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.settings),
//               onPressed: () {
//                 // Settings action
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.menu),
//               onPressed: () {
//                 // Settings action
//               },
//             ),
//           ],
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: const Text('Go to First Screen'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// /// BottomNavigationBar
// class BottomNavigationBarScreen extends StatefulWidget {
//   const BottomNavigationBarScreen({super.key});
//
//   @override
//   BottomNavigationBarState createState() => BottomNavigationBarState();
// }
//
// class BottomNavigationBarState extends State<BottomNavigationBarScreen> {
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('My App'),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: const Text('Go to First Screen'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.search),
//               label: 'Search',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: 'Profile',
//             ),
//           ],
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//         ),
//       ),
//     );
//   }
// }
//
// /// Drawer
// class DrawerScreen extends StatelessWidget {
//   const DrawerScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Drawer Example')),
//         drawer: Drawer(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               const DrawerHeader(
//                 decoration: BoxDecoration(color: Colors.blue),
//                 child: Text('Drawer Header'),
//               ),
//               ListTile(
//                 title: const Text('Item 1'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//               ListTile(
//                 title: const Text('Item 2'),
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           ),
//         ),
//         body: Center(
//           child: ElevatedButton(
//             child: const Text('Go to First Screen'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// /// Routes
// class FirstScreen extends StatelessWidget {
//   const FirstScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('First Screen')),
//       body: Center(
//         child: Column(
//           children: [
//             ElevatedButton(
//               child: const Text('Go to AppBar Screen'),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/appbar_screen');
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Go to Bottom Navigation Bar Screen'),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/bottom_navigation_bar_screen');
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Go to Drawer Screen'),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/drawer_screen');
//               },
//             ),
//             ElevatedButton(
//               child: const Text('Go to Dialog Screen'),
//               onPressed: () {
//                 Navigator.pushNamed(context, '/dialog_screen');
//               },
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }
//
// /// Dialogs
// class DialogsScreen extends StatelessWidget {
//   const DialogsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Dialogs Example')),
//         body: Center(
//           child: ElevatedButton(
//             child: const Text('Go to First Screen'),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DialogScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('AlertDialog Example')),
//         body: Center(
//           child: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text('AlertDialog Title'),
//                         content: Text('This is a simple AlertDialog.'),
//                         actions: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('OK'),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 child: Text('Show AlertDialog'),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return SimpleDialog(
//                         title: Text('Choose an option'),
//                         children: [
//                           SimpleDialogOption(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('Option 1'),
//                           ),
//                           SimpleDialogOption(
//                             onPressed: () {
//                               Navigator.of(context).pop();
//                             },
//                             child: Text('Option 2'),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 child: Text('Show SimpleDialog'),
//               ),
//               ElevatedButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return Dialog(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Container(
//                         height: 200,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 'Custom Dialog',
//                                 style: TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(height: 20),
//                               Text('This is a custom dialog.'),
//                               SizedBox(height: 20),
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text(
//                                   'OK',
//                                   style: TextStyle(fontSize: 18),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                 );
//               },
//                 child: Text('Show Custom Dialog'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }