import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Flutter Shop'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration:  BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                ),
              ),
              accountName:  Text(
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

              leading:  Icon(Icons.logout, color: Colors.red),
              title:  Text('Logout', style: TextStyle(color: Colors.red)),
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.teal[50],
              padding:  EdgeInsets.all(15),
              child: Row(
                children: [
                   CircleAvatar(
                    backgroundImage: AssetImage('assets/icons/profile.jpg'),
                    radius: 25,
                  ),
                   SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        'Welcome to Flutter Shop!',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.teal),
                      ),
                      Text(
                        'Discover products and explore layouts',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    ],
                  ),
                   Spacer(),
                   Icon(Icons.notifications_none, color: Colors.teal),
                ],
              ),
            ),

          ],
        ),
      ),

    );
  }
}