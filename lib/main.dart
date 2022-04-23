import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:udemyfreecourse/view/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Free Course",
        debugShowCheckedModeBanner: false,
        home: HomePageScreen());
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 36, right: 36),
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/intro.svg"),
              Text(
                "Find Your Favourite Course",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Color(0xff232323),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Text(
                  "Lorem ipsum dolor sit amet, consetetur\n sadipscing elitr, sed diam nonumy eirmod\n tempor invidunt ut labore et dolore",
                  style: GoogleFonts.poppins(
                      color: Color(0xffBBBBBB), fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 129),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    height: 56,
                    width: 315,
                    decoration: BoxDecoration(
                      color: Color(0xff6cc4EE),
                      borderRadius: BorderRadius.circular(34),
                    ),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
