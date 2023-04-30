import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constans.dart';

class CategogryCard extends StatelessWidget {
  const CategogryCard({
    super.key,
    required this.title,
    required this.image,
    required this.press,
  });

  final String title, image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        20,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              20,
            ),
            boxShadow: const [
              BoxShadow(
                offset: Offset(
                  0,
                  17,
                ),
                blurRadius: 17,
                spreadRadius: -23,
                color: kShadowColor,
              ),
            ]),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              press();
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(image),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
