import 'package:app_barbearia/screens/MinhaConta/minhaconta_screen.dart';
import 'package:app_barbearia/screens/feed/feed_screen.dart';
import 'package:app_barbearia/screens/historico/historico_screen.dart';
import 'package:app_barbearia/screens/home/home_screen.dart';
import 'package:app_barbearia/stores/page_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

class BaseScreen extends StatefulWidget {

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();

  final PageStore pageStore = GetIt.I<PageStore>();


  @override
  void initState() {
    super.initState();
    reaction(
        (_) => pageStore.page,
        (page) => pageController.jumpToPage(page)
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        HomeScreen(),
        HistoricoScreen(),
        FeedScreen(),
        Container(color: Colors.red,),
        MinhaContaScreen(),
      ],
    );
  }
}
