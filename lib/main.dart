import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/review_screen.dart';
import 'screens/donations_screen.dart';

void main() => runApp(VeoraApp());

class VeoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Veora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, primaryColor: Color(0xFF81C784)),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/review': (context) => ReviewScreen(),
        '/donations': (context) => DonationsScreen(),
      },
    );
  }
}





































//import 'package:flutter/material.dart';

//void main() {
//  runApp(const MainApp());
//}

//class MainApp extends StatelessWidget {
 // const MainApp({super.key});

 // @override
 // Widget build(BuildContext context) {
 //   return const MaterialApp(
 //     home: Scaffold(
 //       body: Center(
 //         child: Text('Hello World!'),
 //       ),
//      ),
//    );
 // }
//}
