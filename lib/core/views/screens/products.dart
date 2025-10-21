import 'package:flutter/material.dart';
import 'package:flutter_shop/core/viewmodel/productvm.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  ProductVM _productvm= ProductVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text('Products'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.teal,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                ),
              ),
              accountName: Text(
                'Hello, Romeo!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('spacetoon@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/icons/profile.jpg'),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home, color: Colors.teal),
              title: Text('Home'),
            ),
            ListTile(
                onTap: (){
                  Navigator.pushNamed(context, "/login");
                },
              leading: Icon(Icons.login, color: Colors.teal),
              title: Text('Login'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Colors.teal),
              title: Text('My Cart'),
            ),

            ListTile(
              leading: Icon(Icons.favorite, color: Colors.teal),
              title: Text('Favorites'),
            ),

            ListTile(
              leading: Icon(Icons.person, color: Colors.teal),
              title: Text('Profile'),
            ),
            Divider(height: 180, endIndent: 40, color: Colors.white),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text('Logout', style: TextStyle(color: Colors.red)),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
        future: _productvm.getAllProducts(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if(snapshot.hasData){

            return ListView.builder(
                itemCount: snapshot.data.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(10),
                itemBuilder: (ctx, index){
              return Column(
                children: [
              Container(
              decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Stack(
                  children: [
                  Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                  image: NetworkImage(snapshot.data[index].thumbnail!),
                  fit: BoxFit.cover,
                  ),
                  ),
                  ),
                  Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                  padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 4,
                  ),
                  decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(

                    snapshot.data[index].price.toString(),
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                  ),
                  ),

                  ],
                  ),

                  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                  snapshot.data[index].title!,
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  ),
                  ),
                  ),
                  Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                  snapshot.data[index].description!,
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  ),
                  Positioned(
                  child: Container(
                  padding: EdgeInsets.symmetric(
                  horizontal: 350,
                  vertical: 4,
                  ),

                  child:
                  Icon(Icons.favorite, color: Colors.teal,)
                  ),
                  ),
                  SizedBox(height: 10),
                  ],
                  ),
                  ),
                  SizedBox(height: 30,)
                ],
              );
            }
            );
          }
          else {
            return Center(child: Text("loading"));
          }
        },

      ),

    );
  }
}
