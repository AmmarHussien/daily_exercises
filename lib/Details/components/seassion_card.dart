
import 'package:flutter/material.dart';

import '../../constans.dart';

class SeassionCard extends StatelessWidget {
  const SeassionCard({
    super.key,
    required this.seassionNum,
    this.isDone = false,
    required this.press,
  });

  final int seassionNum;
  final bool isDone;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(
          13,
        ),
        child: Container(
          width: constrain.maxWidth / 2 - 10,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              13,
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
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                press();
              },
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isDone ? kBlueColor : Colors.white,
                        border: Border.all(
                          color: kBlueColor,
                        ),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Seassion $seassionNum',
                      style: Theme.of(context).textTheme.titleSmall,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
