import 'package:app_barbearia/cummon/custom_drawer/custom_drawer.dart';
import 'package:app_barbearia/styles/style_screen_pattern.dart';
import 'package:flutter/material.dart';

class HistoricoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xfffd9815)),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text("HISTÓRICO",
          style: TextStyle(
              fontFamily: 'Principal',
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      body: styleScreenPattern(),
      endDrawer: CustomDrawer(),
    );
  }
}
