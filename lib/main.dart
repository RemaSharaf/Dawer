import 'package:drawer/drawer/detailsScreen.dart';
import 'package:drawer/drawer/drawerScreen/drawerScreen.dart';
import 'package:drawer/drawer/homeScreen/homeScreen.dart';
import 'package:drawer/drawer/mainScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Circular"),
      debugShowCheckedModeBanner: false,
      initialRoute: "/MainScreen",
      routes: {
        '/DrawerScreen': (context) => const DrawerScreen(),
        '/HomeScreen': (context) => const HomeScreen(),
        '/MainScreen': (context) => const MainScreen(),
        '/DetailsScreen': (context) => const DetailsScreen(),
      },
    );
  }
}
