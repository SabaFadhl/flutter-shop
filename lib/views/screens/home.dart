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
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                ),
              ),
              accountName: const Text(
                'Hello, Student!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('flutter@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/profile.jpg'),
              ),
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