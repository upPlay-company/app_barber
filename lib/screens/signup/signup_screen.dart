import 'package:app_barbearia/styles/style_screen_pattern.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: styleScreenPattern(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            iconTheme: IconThemeData(
                color: Theme.of(context).primaryColor
            ),
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
              ),
              child: Padding(
                padding: EdgeInsets.all(23),
                child: ListView(
                  children: [
                    SizedBox(height: 200,),
                    Form(
                      child: Column(
                        children: [
                          Observer(builder: (_){
                            return Padding(
                              padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                              child: TextFormField(
                                autocorrect: false,
                                style: TextStyle(
                                    color: Colors.white
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white)
                                    ),
                                    labelText: 'Nome Completo',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Principal',
                                        fontSize: 15, color: Colors.white
                                    ),
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                isDense: true,
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontFamily: 'Principal',
                                    fontSize: 15, color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                                labelText: 'Senha',
                                labelStyle: TextStyle(
                                    fontFamily: 'Principal',
                                    fontSize: 15, color: Colors.white
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: TextFormField(
                              obscureText: true,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                ),
                                labelText: 'Confirmar Senha',
                                labelStyle: TextStyle(
                                    fontFamily: 'Principal',
                                    fontSize: 15, color: Colors.white
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 55,
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, left: 80, right: 80),
                        child: RaisedButton(
                          onPressed: (){},
                          child: Text(
                            'CADASTRAR',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'Principal',
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          color: Theme.of(context).primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal()
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
