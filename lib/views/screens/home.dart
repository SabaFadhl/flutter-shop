import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Shop'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
        actions: [
          Icon(Icons.search)
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              accountName: Text('Hello, Student!'),
              accountEmail: Text('flutter@example.com'),
              currentAccountPicture: Icon(Icons.person_off),

            ),

            ListTile(
              leading:  Icon(Icons.home, color: Colors.teal),
              title:  Text('Home'),

            ),

            ListTile(
              leading:  Icon(Icons.shopping_cart, color: Colors.teal),
              title:  Text('My Cart'),

            ),

            ListTile(
              leading:  Icon(Icons.favorite, color: Colors.teal),
              title:  Text('Favorites'),

            ),

            ListTile(
              leading:  Icon(Icons.person, color: Colors.teal),
              title:  Text('Profile'),

            ),
            Divider(height: 400, endIndent: 40, color: Colors.white,),
            ListTile(

              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
            ),

          ],
        ),
      ),
    );
  }
}