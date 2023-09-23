// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mynavbar extends StatelessWidget {
  void Function(int)? onTabChange;
   Mynavbar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return  Container(
    
      
      color: Colors.black,
      
      
      child: Padding(
        padding:  EdgeInsets.all(8.0),
        
        child: GNav(
          
          onTabChange: (value) => onTabChange!(value),
           color: Colors.white,
           mainAxisAlignment: MainAxisAlignment.center,
           backgroundColor: Colors.black12,
           tabBorderRadius: 24,
           tabActiveBorder: Border.all(color: Colors.orange),
           tabMargin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
           padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
           tabBackgroundColor: Colors.white,
          
          
          
          tabs: const [
          //shop
      
          GButton(icon: Icons.home,text: "shop",),
      
          //cart
           GButton(icon: Icons.shopping_bag_rounded,text: "cart",),
          
      
      
        ],),
      ),
    );
  }
}