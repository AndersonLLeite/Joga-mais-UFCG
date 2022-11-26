import 'package:flutter/material.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/button_styles.dart';
import 'package:joga_mais_ufcg/app/core/ui/styles/text_styles.dart';
import 'package:joga_mais_ufcg/app/core/ui/widgets/court_list_widget.dart';

import 'package:joga_mais_ufcg/app/pages/all_court/presenter/all_court_presenter.dart';
import 'package:joga_mais_ufcg/app/pages/all_court/view/all_court_view_impl.dart';

class AllCourtPage extends StatefulWidget {
  final AllCourtPresenter presenter;
  const AllCourtPage({
    Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  State<AllCourtPage> createState() => _AllCourtPageState();
}

class _AllCourtPageState extends AllCourtViewImpl {
  final searchCourtEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  double marginLeft = 0.1;
  double marginRight = 0.1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 15, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 130,
                    height: 72,
                    child: Image.asset('assets/images/logo.png'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyles.instance.primaryButtonMenu,
                    child: Row(
                      children: [
                        const Icon(Icons.menu),
                        //TODO integrado com o login
                        Text(
                          ' Olá, Davi',
                          style: TextStyles.instance.textTitleMenu,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * marginRight,
                  left: MediaQuery.of(context).size.width * marginLeft,
                  bottom: 5),
              child: Text(
                'Quadras disponíveis',
                style:
                    TextStyles.instance.textTitlePrimary.copyWith(fontSize: 25),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * marginLeft,
                  right: MediaQuery.of(context).size.width * marginRight,
                  top: 10,
                  bottom: 15),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyles.instance.transparentButton,
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      Text(
                        'Pesquisar por nome...',
                      )
                    ],
                  )),
            ),
            //TODO Future builder para pegar a lista de quadras do backend...
            ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        bottom: 20,
                        left: MediaQuery.of(context).size.width * marginLeft,
                        right: MediaQuery.of(context).size.width * marginRight),
                    child: const CourtListWidget(
                      label:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pellentesque fermentum egestas, Mauris fringilla.',
                      title: 'Quadra de Tênis',
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
