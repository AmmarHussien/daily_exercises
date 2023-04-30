import 'package:daily_exercises/constans.dart';
import 'package:flutter/material.dart';

import '../../components/search_container.dart';
import 'basic_card.dart';
import 'seassion_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage(
                  'assets/images/meditation_bg.png',
                ),
                fit: BoxFit.fitWidth,
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
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontWeight: FontWeight.w900,
                          fontSize: 36,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '3-10 Min Course',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: size.width * 0.6,
                    child: const Text(
                      'Live happier and healthier by learning the fundamentals of meditation and mindfulness',
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.5,
                    child: const SearchContainer(),
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      SeassionCard(
                        seassionNum: 1,
                        isDone: true,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 2,
                        isDone: true,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 3,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 4,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 5,
                        press: () {},
                      ),
                      SeassionCard(
                        seassionNum: 6,
                        press: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Meditation',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  BasicsCard(
                    title: 'Basic 2',
                    description: 'Start your deepen you practice',
                    press: () {},
                  ),
                  BasicsCard(
                    title: 'Basic 3',
                    description: 'Start your deepen you practice',
                    press: () {},
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
