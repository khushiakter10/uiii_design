import 'package:flutter/material.dart';
import 'package:uiii_design/home/shopping.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      // For BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
          unselectedItemColor: Colors.green[500],
          items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "chart"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
      ]),
      body: ListView(
        children: const [
          SizedBox(height: 15,),
          // For header parts
          Shopping()
        ],
      ),
    );
  }
}
