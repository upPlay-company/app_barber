import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      height: 95,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Icon(Icons.person, color: Colors.white, size: 50,),
          SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 5,),
              Text(
                'Olá, Visitante!',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Principal',
                  color: Colors.white
                ),
              ),
              SizedBox(height: 5,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).pushNamed('/base');
                },
                child: Text(
                    'Sair',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Principal',
                      color: Theme.of(context).primaryColor
                  )
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
