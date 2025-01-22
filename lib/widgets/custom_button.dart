import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()?  onPressed ;
  const CustomButton({
    super.key, required this.title, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        height: 70,
        color: Color(0xffFD9C72),
        splashColor:Color(0xff9BD49E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: onPressed,child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
    );
  }
}
