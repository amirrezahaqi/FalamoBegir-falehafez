import 'package:fale_hafez/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/background/about-bg.png"),
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
                    "assets/applogo.png",
                    width: width / 2,
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  SizedBox(
                    width: width / 1.2,
                    child: Text(
                      """ خواجه شمسُ‌الدّینْ محمّدِ بن بهاءُالدّینْ محمّدْ حافظِ شیرازی مشهور به لِسانُ‌الْغِیْب، تَرجُمانُ الْاَسرار، لِسانُ‌الْعُرَفا و ناظِمُ‌الاُولیاء،متخلص به حافظ، شاعر فارسی‌گوی ایرانی بود. بیش‌تر شعرهای او غزل است. مشهور است که حافظ به شیوهٔ سخن‌پردازی خواجوی کرمانی گرویده و همانندیِ سخنش با شعرِ خواجو مشهور است.""",
                      textAlign: TextAlign.center,
                      locale: const Locale("fa"),
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.vazirmatn(
                          fontSize: 17, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: height / 150,
                  ),
                  SizedBox(
                    width: width / 1.2,
                    child: Text(
                      """فالِ حافظ به‌معنی استفاده از دیوانِ حافظ برای برای پیش‌گوییِ سرنوشت و رفعِ تردید و خوب یا بد بودنِ عاقبتِ کاری یا استعلام از احوالِ شخصِ غایبی است. یکی از باورهای کهن و عمومیِ ایرانیان، فالِ نیک یا بد زدن با دست‌آویزی به رویدادها و اشیاء گوناگون بوده‌است.
        """,
                      textAlign: TextAlign.center,
                      locale: const Locale("fa"),
                      textDirection: TextDirection.rtl,
                      style: GoogleFonts.vazirmatn(
                          fontSize: 17, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: height / 200,
                  ),
                  Text(
                    ":طراح و توسعه دهنده",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.vazirmatn(
                        color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: height / 80,
                  ),
                  Text(
                    "امیررضا جلوس حقی",
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.vazirmatn(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  SizedBox(
                    width: width / 1.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              myLaunchUrl(String url) async {
                                var uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                }
                              }

                              myLaunchUrl("https://instagram.com/amirrezahaqi");
                            },
                            icon: SvgPicture.asset(
                              Assets.instagram, // ignore: deprecated_member_use
                              // ignore: deprecated_member_use
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              myLaunchUrl(String url) async {
                                var uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                }
                              }

                              myLaunchUrl(
                                  "https://www.linkedin.com/in/amirreza-haqi/");
                            },
                            icon: SvgPicture.asset(
                              Assets.linkedin, // ignore: deprecated_member_use
                              // ignore: deprecated_member_use
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              myLaunchUrl(String url) async {
                                var uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                }
                              }

                              myLaunchUrl("https://twitter.com/amirrezahaqi");
                            },
                            icon: SvgPicture.asset(
                              Assets.twitter, // ignore: deprecated_member_use
                              // ignore: deprecated_member_use
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              myLaunchUrl(String url) async {
                                var uri = Uri.parse(url);
                                if (await canLaunchUrl(uri)) {
                                  await launchUrl(uri);
                                }
                              }

                              myLaunchUrl("https://github.com/amirrezahaqi");
                            },
                            icon: SvgPicture.asset(
                              Assets.github, // ignore: deprecated_member_use
                              // ignore: deprecated_member_use
                              color: Colors.white,
                            )),
                      ],
                    ),
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
