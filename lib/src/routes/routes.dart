import 'package:flutter/material.dart';
import 'package:shopjh/src/pages/home_page.dart';
import 'package:shopjh/src/pages/login_page.dart';
import 'package:shopjh/src/pages/prod_detalle_page.dart';

final routes = <String, WidgetBuilder>{
  'login': (BuildContext context) => LoginPage(),
  'home': (BuildContext context) => HomePage(),
  'prod_detalle': (BuildContext context) => ProdDetallePage(),
};
