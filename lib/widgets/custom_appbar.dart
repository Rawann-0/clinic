import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 270,
      decoration: BoxDecoration(
        color: Color(0xffFD9C72),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight:Radius.circular(30)),
      ),
      child: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Hi, Ahmed',style: TextStyle(fontSize: 18,color: Color(0xffFDD3BE),fontWeight: FontWeight.bold),),
          Text('Let\'s know about your favorite doctor!',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
        ],
      ),
    );
  }
}
