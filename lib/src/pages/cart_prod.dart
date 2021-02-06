import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shopjh/src/utils/utils.dart';

class CartProds extends StatefulWidget {
  @override
  _CartProdsState createState() => _CartProdsState();
}

class _CartProdsState extends State<CartProds> {
  var my_prod_lista = [
    {
      "name": "Estrella",
      "picture": "images/products/h1.jpg",
      "price": 22000,
      "size": "M",
      "color": "Negro",
      "qty": 1,
    },
    {
      "name": "Rosata",
      "picture": "images/products/h2.jpg",
      "price": 22000,
      "size": "L",
      "color": "Rosado",
      "qty": 1,
    },
    {
      "name": "Azulejos",
      "picture": "images/products/h3.jpg",
      "price": 22000,
      "size": "S",
      "color": "Verde",
      "qty": 1,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: my_prod_lista.length,
      itemBuilder: (context, index) {
        return Single_cart_prods(
          cart_prod_name: my_prod_lista[index]['name'],
          cart_prod_picture: my_prod_lista[index]['picture'],
          cart_prod_price: my_prod_lista[index]['price'],
          cart_prod_size: my_prod_lista[index]['size'],
          cart_prod_color: my_prod_lista[index]['color'],
          cart_prod_qty: my_prod_lista[index]['qty'],
        );
      },
    );
  }
}

class Single_cart_prods extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;


  Single_cart_prods(
      {this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty});

  @override
  Widget build(BuildContext context) {
    final Dimension dimension = Dimension.of(context);
    return Container(
      width: dimension.wp(100),
      height: dimension.hp(16),
      child: Card(
        
          child: ListTile(

        leading: Image.asset(
          cart_prod_picture,
          height: dimension.hp(25),
          width: dimension.wp(25),
        ),
        title: Row(
          children: [
            Text(cart_prod_name),
          ],
        ),

        subtitle: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text("Talla"),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 5.0),
                  child: Text("Color"),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${cart_prod_price}",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        //
        trailing: Container(
          height: 80.0,
          child: Column(
            children: [
              Container(
                height: 20.0,
                padding: EdgeInsets.only(right: 0.0 , bottom: 0.0),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_drop_up,
                      color: Colors.red,
                      size: 40.0,
                    ),
                    onPressed: () {}),
              ),
              Container(
                height: 15.0,
                padding: EdgeInsets.only(right: 0.0 , top: 5.0,bottom: 0.0),
                child: Text(
                    "\$${cart_prod_qty}",
                  ),
              ),
              Container(
                height: 20.0,
                padding: EdgeInsets.only(right: 0.0 , bottom: 0.0),
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.red,
                      size: 40.0,
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
        //
      )
      ),
    );
  }
  
}
