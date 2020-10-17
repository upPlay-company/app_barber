import 'package:app_barbearia/styles/style_screen_pattern.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              autocorrect: false,
                              style: TextStyle(
                                color: Colors.white
                              ),
                              decoration: InputDecoration(
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
                          TextFormField(
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
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 5),
                      child: FlatButton(
                        onPressed: (){},
                        child: Text(
                          'Esqueceu a senha?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Principal',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, left: 100, right: 100),
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/home');
                          },
                          child: Text(
                            'LOGIN',
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
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Center(
                        child: FlatButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed('/signup');
                          },
                          child: RichText(
                            text: TextSpan(
                              text: "Cadastre-se.",
                                style: TextStyle(
                                  fontFamily: 'Principal',
                                  color: Colors.white,
                                  fontSize: 18,
                                )
                            ),
                          ),
                        ),
                      ),
                    )
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
