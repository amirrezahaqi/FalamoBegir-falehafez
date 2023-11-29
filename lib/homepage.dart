import 'package:audioplayers/audioplayers.dart';
import 'package:fale_hafez/about.dart';
import 'package:fale_hafez/falscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPlaying = true;

  AudioPlayer audioPlayer = AudioPlayer();

  Future<void> playAudio() async {
    await audioPlayer.play(UrlSource(
        "https://amirrezahaqi.ir/wp-content/uploads/2023/11/hafez.mp3"));
    setState(() {
      isPlaying = true;
    });
  }

  Future<void> stopAudio() async {
    await audioPlayer.stop();
    setState(() {
      isPlaying = false;
    });
  }

  void dialogs() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            title: Center(child: Image.asset("assets/wifi.png")),
            actions: [
              Center(
                child: Text(
                  "لطفا از اتصال اینترنت خود مطمئن شوید",
                  textAlign: TextAlign.center,
                  locale: const Locale("fa"),
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.vazirmatn(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "همچنین در صورت روشن بودن فیلتر شکن آن را خاموش نمایید",
                  textAlign: TextAlign.center,
                  locale: const Locale("fa"),
                  textDirection: TextDirection.rtl,
                  style: GoogleFonts.vazirmatn(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: const Color.fromARGB(255, 255, 255, 255)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // عملیاتی که می‌خواهید پس از فشردن دکمه انجام شود.
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.yellow,

                  backgroundColor:
                      const Color.fromRGBO(234, 158, 77, 1), // رنگ متن دکمه
                  shadowColor: const Color.fromRGBO(183, 116, 50, 1),
                  // رنگ سایه دکمه
                  elevation: 5, // برجستگی و ایجاد حس سه‌بعدی
                  shape: RoundedRectangleBorder(
                    // گردی گوشه‌های دکمه
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "بستن  پنجره",
                    style: GoogleFonts.vazirmatn(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: const Color.fromRGBO(107, 38, 15, 1)),
                  ),
                ),
              ))
            ],
          );
        });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    playAudio();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background/mainscreen.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: 20,
              right: 15,
              left: 15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                      width: width / 10,
                      height: width / 10,
                      child: ElevatedButton(
                        onPressed: isPlaying ? stopAudio : playAudio,
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
                        child: Icon(
                          isPlaying
                              ? Icons.music_note_outlined
                              : Icons.music_off_outlined,
                          color: const Color.fromRGBO(107, 38, 15, 1),
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
          Positioned(
            bottom: 20,
            right: 5,
            left: 5,
            child: Center(
                child: ElevatedButton(
              onPressed: () {
                Get.to(const FalScreen());
                dialogs();
                // عملیاتی که می‌خواهید پس از فشردن دکمه انجام شود.
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.yellow,

                backgroundColor:
                    const Color.fromRGBO(234, 158, 77, 1), // رنگ متن دکمه
                shadowColor: const Color.fromRGBO(183, 116, 50, 1),
                // رنگ سایه دکمه
                elevation: 5, // برجستگی و ایجاد حس سه‌بعدی
                shape: RoundedRectangleBorder(
                  // گردی گوشه‌های دکمه
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "نیت کردم ، فالمو بگیر",
                  style: GoogleFonts.vazirmatn(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      color: const Color.fromRGBO(107, 38, 15, 1)),
                ),
              ),
            )),
          )
        ]),
      ),
    );
  }
}
