import 'package:app_barbearia/cummon/custom_drawer/custom_drawer_header.dart';
import 'package:app_barbearia/cummon/custom_drawer/page_section.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,
        child: Drawer(
          child: Container(
            color: Colors.black87,
            child: ListView(
              children: [
                CustomDrawerHeader(),
                SizedBox(height: 10,),
                PageSection(),
                Divider(color: Colors.black,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
