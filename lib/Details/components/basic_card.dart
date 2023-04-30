import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constans.dart';

class BasicsCard extends StatelessWidget {
  const BasicsCard({
    super.key,
    required this.title,
    required this.description,
    required this.press,
  });

  final String title, description;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          press();
        },
        child: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          padding: const EdgeInsets.all(10),
          height: 90,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            ),
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
            children: [
              SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      description,
                      //style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: SvgPicture.asset('assets/icons/Lock.svg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
