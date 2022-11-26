import 'package:flutter/material.dart';

import 'package:joga_mais_ufcg/app/core/ui/styles/colors_app.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';

class CourtListWidget extends StatelessWidget {
  final String title;
  final String label;
  const CourtListWidget({
    Key? key,
    required this.title,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsApp.instance.secondary,
        borderRadius: BorderRadius.circular(15),
      ),
      height: 90,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: ColorsApp.instance.blue,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
            ),
            width: 26,
            height: 90,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 12, bottom: 12, left: 12, right: 30),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      title,
                      style: TextStyles.instance.textTitleSecondary
                          .copyWith(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Text(
                      label,
                      style: TextStyles.instance.textSubTitleSecondary
                          .copyWith(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
