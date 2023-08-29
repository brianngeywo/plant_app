import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/buy_seedling_page.dart';
import 'package:plant_app/test_data.dart';
import 'package:plant_app/tree_seedlings_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 70,
      //   backgroundColor: Colors.green.shade50,
      //   elevation: 0,
      //   leading: Icon(
      //     Icons.menu_outlined,
      //     color: Colors.green.shade900,
      //     size: 30,
      //   ),
      //   title: Image.asset(
      //     "assets/images/logo.png",
      //     fit: BoxFit.contain,
      //   ),
      // ),
      body: const Center(child: BuySeedlingPage()),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green.shade900,
        hoverColor: Colors.green.shade50,
        child: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
        onPressed: () {},
        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        shadow: BoxShadow(
          offset: Offset(0, 1),
          blurRadius: 12,
          spreadRadius: 0.5,
          color: Colors.green.shade100,
        ),
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 0,
        rightCornerRadius: 0,
        blurEffect: true,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
