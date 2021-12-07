import 'package:flutter/material.dart';

import 'cirurgico_form.dart';
import 'home_page.dart';
import 'oncologico_form.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MedForm',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cirurgico_form': (context) => CirurgicoPage(),
        '/oncologico_form': (context) => OncologicoPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        brightness: Brightness.light,
      ),
    );
  }
}
