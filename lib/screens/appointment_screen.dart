import 'package:flutter/material.dart';
import '../widgets/about_card.dart';
import '../widgets/appointment_appbar.dart';
import '../widgets/custom_button.dart';
import '../widgets/status_card.dart';
class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
           AppointmentAppBar(),
           StatusCard(),
           AboutCard(),
           CustomButton(title: 'Appointment', onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Row(
                  spacing: 5,
              children: [
                Text('Reservation done',style: TextStyle(fontSize: 20,),),
                Icon(Icons.done_all_sharp,color: Colors.lightGreenAccent,),
              ],
            )));
          }),

    ],
      ),

    );
  }
}



