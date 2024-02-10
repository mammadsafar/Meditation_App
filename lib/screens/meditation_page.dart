import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants/constants.dart';
import 'package:meditation_app/screens/player_page.dart';
import 'package:meditation_app/widgets/buttonnavbar_widget.dart';
import 'package:meditation_app/widgets/searchbar_widget.dart';
import 'package:meditation_app/widgets/session_card_widget.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const ButtonNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: size.height * 0.07),
                    const Text(
                      'مدیتیشن',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Text(
                      '20 دقیقه آموزش ',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'Lalezar',
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را\nمیتوانید خیلی افزایش دهید و عمر طولانی‌تری\nداشته باشید',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontFamily: 'yekanBakh',
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * 0.4,
                        child: const BuildSearchBar(),
                      ),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        BuildSessionCard(
                          sessionNumber: 'ویدیو شماره 1',
                          isDone: true,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyVideoPlayerPage(),
                              ),
                            );
                          },
                        ),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره 2'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره 3'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره 4'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره 5'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره 6'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'پیشنهادما',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: 'yekanBakh',
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'یوگا پیشرفته',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'yekanBakh',
                                    fontSize: 17,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'پیشرفته تر از قبل تمرین کنید',
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                    fontFamily: 'yekanBakh',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
