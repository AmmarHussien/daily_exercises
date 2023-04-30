import 'package:daily_exercises/Details/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/custom_nav_bar.dart';
import '../components/search_container.dart';
import 'components/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const CustomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5cEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  'assets/images/undraw_pilates_gpdb.png',
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/menu.svg',
                      ),
                    ),
                  ),
                  Text(
                    'Good Morning \nMiimz',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                  ),
                  const SearchContainer(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategogryCard(
                          image: 'assets/icons/Hamburger.svg',
                          title: 'Diet Recomendation',
                          press: () {},
                        ),
                        CategogryCard(
                          image: 'assets/icons/Excrecises.svg',
                          title: 'Kegel Exercises',
                          press: () {},
                        ),
                        CategogryCard(
                          image: 'assets/icons/Meditation.svg',
                          title: 'Meditation',
                          press: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const DetailsScreen(),
                              ),
                            );
                          },
                        ),
                        CategogryCard(
                          image: 'assets/icons/yoga.svg',
                          title: 'Yoga',
                          press: () {},
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
