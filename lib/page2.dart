// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:panda/page3.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    double paddingValue = MediaQuery.of(context).size.width * 0.05;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Honest\nRatings',
                style: GoogleFonts.ubuntu(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Image.asset(
              'assets/pic2.jpg',
              width: 250,
              height: 350,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              'We carefully check each specialist \nand put honest ratings',
              style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Page3()),
              );
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(HexColor('#20C3AF')),
            ),
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
