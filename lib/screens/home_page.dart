import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants/constants.dart';
import 'package:meditation_app/screens/meditation_page.dart';
import 'package:meditation_app/widgets/buttonnavbar_widget.dart';
import 'package:meditation_app/widgets/category_widget.dart';
import 'package:meditation_app/widgets/searchbar_widget.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const ButtonNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 245, 206, 184),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 229, 182, 156),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'سارا عزیز، برای مدیــتیشتن \nآمـــاده ایـی؟',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Lalezar',
                          fontSize: 30,
                          color: kTextColor,
                        ),
                  ),
                  const BuildSearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        const BuildCategoryCard(
                          svgSrc: 'assets/icons/Hamburger.svg',
                          title: 'رژیم پیشنهادی',
                        ),
                        const BuildCategoryCard(
                          svgSrc: 'assets/icons/Excrecises.svg',
                          title: 'نرمش',
                        ),
                        BuildCategoryCard(
                          svgSrc: 'assets/icons/Meditation_women_small.svg',
                          title: 'مدیتیشن',
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const MeditationPage();
                                },
                              ),
                            );
                          },
                        ),
                        const BuildCategoryCard(
                          svgSrc: 'assets/icons/yoga.svg',
                          title: 'یوگا',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
