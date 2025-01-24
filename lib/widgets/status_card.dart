import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
