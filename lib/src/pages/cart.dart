import 'package:flutter/material.dart';
import 'package:shopjh/src/pages/cart_prod.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cabezera
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
        ],
      ),
      // Cuerpo
      body: CartProds(),
      // Pie
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text("Total:"),
                subtitle: Text("\$25000"),
              )
            ),
            Expanded(
              child: MaterialButton(
                onPressed: (){},
                child: Text(
                  "Reservar",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.red,
              )
            )
          ],
        )
      ),
    );
  }
}