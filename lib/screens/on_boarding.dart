import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.green,
      pages: [
        PageViewModel(
          title: 'Welcome to Our Clinic!',
          body: 'Experience exceptional dental care and a healthy smile.',
          image: buildImage('assets/images/—Pngtree—dentist doctor examines patient to_6542605.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Comprehensive Services',
          body: 'From cleanings to advanced treatments, we’ve got you covered.',
          image: buildImage('assets/images/—Pngtree—dental protection dentist treatment clinic_6943386.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Book Your Appointment',
          body: 'Schedule a visit today and take the first step toward a brighter smile.',
          image: buildImage('assets/images/rb_92447.png'),
          decoration: getPageDecoration(),
        ),
      ],
      onDone: () {
        // Navigate to Home Screen after onboarding is done
        Navigator.pushReplacementNamed(context, 'home');
      },
      onSkip: () {
        // Skip onboarding and go to the Home screen
        Navigator.pushReplacementNamed(context, 'home');
      },
      showSkipButton: true,
      skip: const Text('Skip',style: TextStyle(color: Colors.white),),
      next: const Icon(Icons.arrow_forward,color: Colors.white,),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        activeSize: Size(22.0, 10.0),
        activeColor: Colors.red,
        color: Colors.grey,
        spacing: EdgeInsets.symmetric(horizontal: 3.0),
        shape: Border.all(color: Colors.black, width: 1.5),
      ),
    );
  }

  Widget buildImage(String path) {
    return Align(
      child: Image.asset(path, height: 250.0),
      alignment: Alignment.bottomCenter,
    );
  }

  PageDecoration getPageDecoration() {
    return PageDecoration(
      titleTextStyle: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold,color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 16.0,color: Colors.white),
      imagePadding: EdgeInsets.only(bottom: 30),
      pageColor: Colors.green,
    );
  }
}
