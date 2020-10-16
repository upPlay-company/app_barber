import 'package:app_barbearia/cummon/custom_drawer/custom_drawer.dart';
import 'package:app_barbearia/screens/home/components/section_banner.dart';
import 'package:app_barbearia/screens/meus_servicos/meus_servicos_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff272727),
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Color(0xfffd9815)),
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text("BARBEARIA ROCK",
          style: TextStyle(
              fontFamily: 'Principal',
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      drawerScrimColor: Colors.transparent,
      body: ListView(
        children: [
          SectionBanner(),
          SizedBox(height: 30,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 70,
                      child: Padding(
                        padding: EdgeInsets.only(left: 50, right: 50),
                        child: RaisedButton(
                          onPressed: (){},
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              Text(
                                'AGENDE SEU SERVIÇO',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Principal',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),
                              ),
                              Text(
                                '(Clique Aqui)',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Principal',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),
                              ),
                            ],
                          ),
                          color: Theme.of(context).primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(30),
                                right: Radius.circular(30)
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30,),
          /*Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Text(
              'Meus Serviços Agendados',
              style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Principal',
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor
              ),
            ),
          ),
          MeusServicosScreen()*/
        ],
      ),
      endDrawer: CustomDrawer(),
    );
  }
}
