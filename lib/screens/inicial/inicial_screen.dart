import 'package:flutter/material.dart';

class InicialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final primaryColor = Theme.of(context).primaryColor;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/appBarbearia.png'),
          fit: BoxFit.cover
        )
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Seja Bem vindo ao BarberShop',
                style: TextStyle(
                  fontFamily: 'Principal',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: 'Escolha seu login:',
                style: TextStyle(
                    fontFamily: 'Principal',
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: primaryColor
                )
            ),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: SizedBox(
              height: 44,
              width: 180,
              child: RaisedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed('/login');
                },
                color: primaryColor,
                child: Text(
              'Email', style: TextStyle(
                    fontFamily: 'Principal',
                    fontSize: 22,
                    color: Colors.white),
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 20),
            child: SizedBox(
                height: 44,
                width: 180,
                child: RaisedButton(
                  onPressed: (){},
                  color: Colors.blue,
                  child: Text(
                    'Facebook', style: TextStyle(
                      fontFamily: 'Principal',
                      fontSize: 22,
                      color: Colors.white),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}
