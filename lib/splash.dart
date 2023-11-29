import 'package:fale_hafez/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background/splash.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 5,
              right: 5,
              top: 20,
              bottom: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/logotext.png",
                    width: width / 1.2,
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  const SpinKitFadingFour(
                    color: Colors.white,
                    size: 50.0,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 10,
              right: 5,
              left: 5,
              child: Center(
                child: Text(
                  "نسخه برنامه 1.1",
                  style: GoogleFonts.vazirmatn(color: Colors.white),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
