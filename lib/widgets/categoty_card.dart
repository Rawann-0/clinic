import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String title;
  const CategoryCard({
    super.key, required this.image, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black26,width: 2)

          ),
          child: Image(image: AssetImage(image),width: 80,),
        ),
        Text(title,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.deepOrange),),
      ],
    );
  }
}
