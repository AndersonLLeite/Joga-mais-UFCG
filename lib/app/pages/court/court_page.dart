import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/button_styles.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/colors_app.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';

import 'package:joga_mais_ufcg/app/models/court/court.dart';

class CourtPage extends StatelessWidget {
  final Court court;

  const CourtPage({
    Key? key,
    required this.court,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double marginLeft = 0.08;
    const double marginRight = 0.08;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorsApp.instance.backButton,
          ),
          width: 50,
          height: 50,
          child: const BackButton()
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 164,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(court.image),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 15,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  right: MediaQuery.of(context).size.width * marginRight,
                  bottom: 15),
              child: Text(
                court.title,
                style:
                    TextStyles.instance.textTitlePrimary.copyWith(fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 15,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  right: MediaQuery.of(context).size.width * marginRight),
              child: Text(
                court.description,
                style: TextStyles.instance.textSubTitleSecondary
                    .copyWith(fontSize: 16),
              ),
            ),
            Visibility(
              visible: court.exclusivity,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * marginLeft,
                    right: MediaQuery.of(context).size.width * marginRight,
                    bottom: 13),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/images/graduate_cap.png'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Exclusivo para alunos(as) da UFCG',
                      style: TextStyles.instance.textTitleSecondary
                          .copyWith(fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * marginLeft,
                  right: MediaQuery.of(context).size.width * marginRight,
                  bottom: 13),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Icon(
                      Icons.access_time_filled,
                      color: ColorsApp.instance.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    court.businessHour,
                    style: TextStyles.instance.textTitleSecondary
                        .copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * marginLeft,
                  right: MediaQuery.of(context).size.width * marginRight,
                  bottom: 13),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Icon(
                      Icons.info,
                      color: ColorsApp.instance.blue,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    court.scheddulingDuration,
                    style: TextStyles.instance.textTitleSecondary
                        .copyWith(fontSize: 16),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 45,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  right: MediaQuery.of(context).size.width * marginRight),
              child: ElevatedButton(
                style: ButtonStyles.instance.primaryButton,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.access_time_filled,
                      color: Colors.white,
                    ),
                    Text(" Beleza, quero agendar!"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
