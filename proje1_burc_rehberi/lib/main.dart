import 'package:flutter/material.dart';
import 'package:proje1_burc_rehberi/route_generator.dart';

import 'burc_listesi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      //home: BurcListesi(),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}