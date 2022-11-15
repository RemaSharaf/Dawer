import 'package:drawer/drawer/drawerScreen/drawerScreen.dart';
import 'package:drawer/drawer/homeScreen/homeScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: const [
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
