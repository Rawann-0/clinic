import 'package:flutter/material.dart';
import '../widgets/categories_listview.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/doctor_card.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,bottom: 20),
            child: Text('Categories',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          CategoriesListView(),
          DoctorCard(),
          SizedBox(height: 50,),
          CustomButton(title: 'To appointment', onPressed: (){
            Navigator.pushNamed(context, 'appoint');
          },)
        ],
      ),
    );
  }
}





