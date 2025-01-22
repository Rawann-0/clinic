import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
           AppointmentAppBar(),
           Card(
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                shadowColor: Colors.black,
                elevation: 4,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Row(
                    spacing: 7,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10,top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 30,
                          children: [
                            Text('Stats',style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Healthy',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.red),),
                                Text('Clients 75%',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.red),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Image.asset('assets/images/statistic.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 30,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('On',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Color(0xffDAA119)),),
                                Text(' treatment 9%',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Color(0xffDAA119)),),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Diagnosed',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.green),),
                                Text('15%',style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold,color: Colors.green),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
           Card(
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.white,
                shadowColor: Colors.black,
                elevation: 4,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                        child: Column(
                          spacing: 5,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('about',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                            Text('Dr Mim is a well respected dental and oral health specialist. he always wanted to learn more about the world of health. he is conscientious and responsible.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),)

                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 10,
                              children: [
                                Icon(Icons.calendar_month,color: Colors.white,size: 30,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Monday-Friday',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Text('09:00-17:00',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                                  ],
                                ),
                              ],
                            ),
                            TextButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Colors.white),
                              ),
                                onPressed: (){}, child: Text('Open',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.blue),)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
