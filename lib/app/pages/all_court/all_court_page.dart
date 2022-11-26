import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(),
    );
  }
}
