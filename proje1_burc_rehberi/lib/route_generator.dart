import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proje1_burc_rehberi/burc_listesi.dart';
import 'package:proje1_burc_rehberi/burd_detay.dart';
import 'package:proje1_burc_rehberi/model/burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => BurcListesi());

      case "/burcDetay":
        final Burc secilenBurc = settings.arguments as Burc;
        return MaterialPageRoute(
            builder: (context) => BurcDetay(secilenBurc: secilenBurc));
    }
  }
}
