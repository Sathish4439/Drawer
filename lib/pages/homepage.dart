// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:googlenavbar/pages/Mynavigationbar.dart';
import 'package:googlenavbar/pages/cartpage.dart';
import 'package:googlenavbar/pages/mybackgroundcolor.dart';
import 'package:googlenavbar/pages/shoppage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
int _selectedindex=0;

    void Mypagenav(int index)
    {
      setState(() {
        _selectedindex=index;
      });
    }

    final List _pages=[
      Shop(),

      Cart(),

    ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor:Colors.black
      ),

    

     backgroundColor: backgroundcolor,
     bottomNavigationBar: Mynavbar(
      onTabChange: (index) => Mypagenav(index),
     ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
       child: ListView(
        children: [
          Center(
            child: DrawerHeader(decoration: BoxDecoration(color: Colors.black),child:
            UserAccountsDrawerHeader(accountName: Text("sathish"), 
            accountEmail: Text("aravindsathish0885gmail.com"),
            decoration: BoxDecoration(color: Colors.black),
            currentAccountPicture: Icon(Icons.person,color: Colors.white,),
            currentAccountPictureSize: Size(50, 50),)
            ),
          ),
          SizedBox(height: 25,),
          ListTile(
            
            contentPadding:EdgeInsets.symmetric(horizontal:20) ,
            leading: Icon(Icons.person,size: 20,),title: Text("Manage Account"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding:EdgeInsets.symmetric(horizontal:20) ,
            leading: Icon(Icons.edit,size: 20,),title: Text("Edit Account"),
             onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            contentPadding:EdgeInsets.symmetric(horizontal:20) ,
            leading: Icon(Icons.settings,size: 20,),title: Text("Settings"),
             onTap: () {
              Navigator.pop(context);
            },
          ),
         SizedBox(height: 370,),
          ListTile(
            
            contentPadding:EdgeInsets.symmetric(horizontal:20) ,
            leading: Icon(Icons.logout,size: 20,),title: Text("Logout"),
             onTap: () {
              Navigator.pop(context);
            },
          )
        ],
       ),
      ),
     

    
    );
  }
}