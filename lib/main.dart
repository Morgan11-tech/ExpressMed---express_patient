import 'package:expressmed_patient_app/widgets/boarding_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
      return Scaffold(
        body: PageView(
          children: [
            boarding_page(context,"assets/testi_image_onboarding.jpg","Welcome to Expressmed","Empowering patients for better health"),
            Container(
              height: height *.5,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            )
          ],
        ),
      );
  }
}

