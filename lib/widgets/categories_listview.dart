import 'package:flutter/material.dart';

import '../data.dart';
import 'categoty_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: CategoryCard(image: images[index], title: titles[index],),
          );
        },itemCount: 4,),
    );
  }
}
