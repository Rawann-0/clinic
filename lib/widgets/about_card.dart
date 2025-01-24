import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
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
    );
  }
}
