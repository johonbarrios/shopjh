import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:shopjh/src/componets/horizontal_list.dart';
import 'package:shopjh/src/componets/productos_page.dart';
import 'package:shopjh/src/pages/cart.dart';
import 'package:shopjh/src/utils/utils.dart';

/*
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Dimension dimension = Dimension.of(context);
    Widget image_carousel = new Container(
      height: dimension.hp(25),
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/motel1.jpg'),
          AssetImage('images/motel2.jpg'),
          AssetImage('images/motel3.jpg'),
          AssetImage('images/motel4.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Motel Eros'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {})
        ],
      ),
      //
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text('John Barrios'),
              accountEmail: Text('arrebol6013@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
//
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Inicio'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Cuenta'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Mis Ordenes'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categoría'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorito'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Configuración'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Ayuda'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      //
      body: new ListView(
        children: [
          image_carousel,
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Categorias'),
          ),
          HorizontalList(),
          //
          new Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              'Habitaciones Más Visitadas',
            ),
          ),
          Container(
            height: dimension.hp(40),
            child: ProductosPage(),
          ),
          
      
        ],
      ),
    );
  }
}
*/
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Dimension dimension = Dimension.of(context);
    Widget image_carousel = new Container(
      height: dimension.hp(25),
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/motel1.jpg'),
          AssetImage('images/motel2.jpg'),
          AssetImage('images/motel3.jpg'),
          AssetImage('images/motel4.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text('Motel Eros'),
        actions: [
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              })
        ],
      ),
      //
      drawer: new Drawer(
        child: new ListView(
          children: [
            new UserAccountsDrawerHeader(
              accountName: Text('jota'),
              accountEmail: Text('arrebol6013@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.red),
            ),
//
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Inicio'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Cuenta'),
                leading: Icon(Icons.person),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text('Mis Ordenes'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categoría'),
                leading: Icon(Icons.dashboard),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorito'),
                leading: Icon(Icons.favorite),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Configuración'),
                leading: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Ayuda'),
                leading: Icon(
                  Icons.help,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
      //
      body: Column(
        children: [
          //
          image_carousel,
          //
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                alignment: Alignment.centerLeft, child: Text('Productos')),
          ),
          //
          HorizontalList(),
          //
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text('Habitaciones Más Visitadas'),
            ),
          ),
          Flexible(
            //height: dimension.hp(38),
            child: ProductosPage(),
          )
        ],
      ),
    );
  }
}
