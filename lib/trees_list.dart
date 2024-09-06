import 'dart:math';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/test_data.dart';

class TreesListPage extends StatefulWidget {
  TreesListPage({super.key});

  @override
  State<TreesListPage> createState() => _TreesListPageState();
}

class _TreesListPageState extends State<TreesListPage> {
  int _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        title: Text(
          "Available Tress",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: treesTypes.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                onTap: () {},
                child: Card(
                  elevation: 7,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 100,
                    child: ListTile(
                      leading: Image.asset(
                        treeImages[Random().nextInt(treeImages.length)],
                        fit: BoxFit.fitHeight,
                      ),
                      title: Text(
                        treesTypes[index].name,
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        treesTypes[index].scientificName,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
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
