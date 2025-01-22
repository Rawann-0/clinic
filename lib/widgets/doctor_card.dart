import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 140,
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(color: Colors.black87,spreadRadius:1,blurRadius: 5,offset: Offset(4, 3))],
        color: Color(0xff9BD49E),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
        child: Row(
          spacing: 20,
          children: [
            CircleAvatar(
              foregroundImage: AssetImage('assets/images/doctor.png'),
              radius: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr.Mim flkhter',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                Text('Dentist',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
