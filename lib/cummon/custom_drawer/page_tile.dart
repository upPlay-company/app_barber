import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {

  PageTile({this.label, this.iconData, this.onTap, this.highlighted});

  final String label;
  final IconData iconData;
  final VoidCallback onTap;
  final bool highlighted;

  @override
  Widget build(BuildContext context) {

    final primaryColor = Theme.of(context).primaryColor;

    return ListTile(
      title: Text(
        label,
        style: TextStyle(
          color: highlighted ? primaryColor : Colors.white,
          fontFamily: 'Principal',
          fontSize: 18,
          fontWeight: FontWeight.w700
        ),
      ),
      leading: Icon(
        iconData,
        color: highlighted ? primaryColor : Colors.white,
        size: 25,
      ),
      onTap: onTap,

    );
  }
}
