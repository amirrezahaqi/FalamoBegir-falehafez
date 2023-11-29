import 'dart:convert';

import 'package:fale_hafez/about.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class FalScreen extends StatefulWidget {
  const FalScreen({Key? key}) : super(key: key);

  @override
  State<FalScreen> createState() => _FalScreenState();
}

class _FalScreenState extends State<FalScreen> {
  String title = '';
  String rhyme = '';
  String meaning = '';
  String shomare = '';

  bool success = true;

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://one-api.ir/hafez/?token=376746:653a7c0f1ea74'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // ignore: unused_local_variable
      bool success = true;
      setState(() {
        title = data['result']['TITLE'];
        rhyme = data['result']['RHYME'];
        meaning = data['result']['MEANING'];
        shomare = data['result']['SHOMARE'];
      });
    } else {
      // ignore: unused_local_variable
      bool success = false;
      // در صورتی که دریافت اطلاعات با مشکل مواجه شود
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background/falscreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height / 7),
                Text(
                  "شماره صفحه فال شما : $shomare",
                  textAlign: TextAlign.center,
                  locale: const Locale("fa"),
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.vazirmatn(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: height / 20),
                Text(
                  success ? rhyme : "لطفا اتصال اینترنت خود را بررسی نمایید",
                  textAlign: TextAlign.center,
                  locale: const Locale("fa"),
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.vazirmatn(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: height / 20),
                const Divider(),
                SizedBox(height: height / 20),
                Text(
                  "تفسیر فال شما",
                  textAlign: TextAlign.center,
                  locale: const Locale("fa"),
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.vazirmatn(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(height: height / 30),
                SizedBox(
                  width: width / 1.2,
                  child: Text(
                    success
                        ? meaning
                        : "لطفا اتصال اینترنت خود را بررسی نمایید",
                    textAlign: TextAlign.center,
                    locale: const Locale("fa"),
                    textDirection: TextDirection.rtl,
                    style: GoogleFonts.vazirmatn(
                        fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(height: height / 20),
              ],
            ),
          ),
          Positioned(
              top: 20,
              right: 10,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: width / 10,
                      height: width / 10,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.back();
                          // عملیاتی که می‌خواهید پس از فشردن دکمه انجام شود.
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.yellow,
                          backgroundColor:
                              const Color.fromRGBO(234, 158, 77, 1),
                          shadowColor: const Color.fromRGBO(183, 116, 50, 1),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.zero, // تنظیم padding به صفر
                        ),
                        child: const Icon(
                          CupertinoIcons.back,
                          color: Color.fromRGBO(107, 38, 15, 1),
                        ),
                      )),
                  Image.asset(
                    "assets/logotext.png",
                    width: width / 2,
                  ),
                  SizedBox(
                      width: width / 10,
                      height: width / 10,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(const AboutScreen());
                          // عملیاتی که می‌خواهید پس از فشردن دکمه انجام شود.
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.yellow,
                          backgroundColor:
                              const Color.fromRGBO(234, 158, 77, 1),
                          shadowColor: const Color.fromRGBO(183, 116, 50, 1),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.zero, // تنظیم padding به صفر
                        ),
                        child: const Icon(
                          CupertinoIcons.person_alt_circle,
                          color: Color.fromRGBO(107, 38, 15, 1),
                        ),
                      )),
                ],
              )),
        ]),
      ),
    );
  }
}
