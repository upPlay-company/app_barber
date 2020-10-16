import 'package:flutter/material.dart';

class styleScreenPattern extends StatelessWidget {

  styleScreenPattern({this.child});

  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/appBarbearia.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}

