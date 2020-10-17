import 'package:app_barbearia/screens/MinhaConta/minhaconta_screen.dart';
import 'package:app_barbearia/screens/feed/feed_screen.dart';
import 'package:app_barbearia/screens/historico/historico_screen.dart';
import 'package:app_barbearia/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  final PageController pageController = PageController();
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
