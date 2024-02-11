import 'package:flutter/material.dart';
import 'package:foodrecipe/widgets/Hero.dart';
import 'package:foodrecipe/widgets/appBar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Food Recipe',
      home: MyHomePage(title: ''),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      appBar: Appbar(),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              // Title
              Text( "How to make french toast", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500) ),
              // Hero section with background image and play button
              SizedBox(height: 15),
              HeroSection(bgImg: "../assets/images/image_13.png"),
              
              SizedBox(height: 15),
            ]

          ),
        ),

      ),
    );
  }
}
