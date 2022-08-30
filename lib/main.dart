import 'package:flutter/material.dart';
import 'coffee_page.dart';
import 'home_page.dart';

void main() {
  runApp(const Coffee());
}

class Coffee extends StatelessWidget {
  const Coffee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home_page': (context) => const HomePage(),
        '/coffee_page': (context) => const CoffeePage(),
      },
      initialRoute: '/home_page',
      // debugShowCheckedModeBanner: false,
      // home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


