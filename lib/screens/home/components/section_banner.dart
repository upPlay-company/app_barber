import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 200,
                    width: 300,
                    child: Carousel(
                      images: [
                        NetworkImage('https://a-static.mlcdn.com.br/1500x1500/luminoso-decoracao-barbearia-aberto-criacaoartevisual/criacaoartevisual/34/01ea00ab9697c1bd05f137ddbccdd797.jpg'),
                        AssetImage('images/barbershop.jpg'),
                        NetworkImage('https://graces.com.br/wp-content/uploads/2019/02/o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640.jpg')
                      ],
                      dotBgColor: Colors.transparent,
                      dotColor: Colors.transparent,
                      dotIncreasedColor: Colors.transparent,
                      dotSpacing: 15,
                      animationDuration: Duration(milliseconds: 2000),
                      autoplayDuration: Duration(seconds: 7),
                    ),
                  ),
                ]
            )
          ],
        ),
      ),
    );
  }
}
