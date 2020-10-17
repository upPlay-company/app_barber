import 'package:app_barbearia/screens/base/base_screen.dart';
import 'package:app_barbearia/screens/inicial/inicial_screen.dart';
import 'package:app_barbearia/screens/login/login_screen.dart';
import 'package:app_barbearia/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InicializeParse();
  runApp(MyApp());
}

Future<void> InicializeParse() async {
  await Parse().initialize(
      'Udio4q3IiLj0wOi9wFzoOyqUNyk6BV2GWa2j0UzC',
      'https://parseapi.back4app.com/',
      clientKey: 'R0kPYeX9n5tPOkPuqJSuDbRGXS7JCgsypyOoekEA',
      autoSendSessionId: true,
      debug: true
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barber Demo',
      theme: ThemeData(
        primaryColor: Color(0xfffd9815),
        iconTheme: new IconThemeData(color: Color(0xfffd9815))
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/base',
      onGenerateRoute: (settings){
        switch(settings.name){
          case '/home':
            return MaterialPageRoute(
              builder: (_) => BaseScreen(),
            );
          case '/login':
            return MaterialPageRoute(
              builder: (_) => LoginScreen(),
            );
          case '/signup':
            return MaterialPageRoute(
              builder: (_) => SignupScreen(),
            );
          case '/base':
          default:
            return MaterialPageRoute(
              builder: (_) => InicialScreen(),
            );
        }
      },
    );
  }
}

