import 'package:flutter/material.dart';

class AppointmentAppBar extends StatelessWidget {
  const AppointmentAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 290,
      decoration: BoxDecoration(
        color: Color(0xff12A7F7),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(35),bottomRight:Radius.circular(30)),
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 230,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/doctor.png'),
                    fit: BoxFit.cover
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dr.Mim flkhter',textAlign: TextAlign.start,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),),
              Text('Dentist',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black26),),

            ],
          ),
        ],
      ),
    );
  }
}
