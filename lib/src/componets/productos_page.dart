import 'package:flutter/material.dart';
import 'package:shopjh/src/pages/prod_detalle_page.dart';
import 'package:shopjh/src/utils/utils.dart';

class ProductosPage extends StatefulWidget {
  @override
  _ProductosPageState createState() => _ProductosPageState();
}

class _ProductosPageState extends State<ProductosPage> {
  var prod_lista = [
    {
      "name": "Estrella",
      "picture": "images/products/h1.jpg",
      "old_price": 25000,
      "price": 22000,
    },
    {
      "name": "Rosata",
      "picture": "images/products/h2.jpg",
      "old_price": 25000,
      "price": 22000,
    },
    {
      "name": "Azulejos",
      "picture": "images/products/h3.jpg",
      "old_price": 25000,
      "price": 22000,
    },
    {
      "name": "Romantica",
      "picture": "images/products/h4.jpg",
      "old_price": 30000,
      "price": 25000,
    },
    {
      "name": "Especial",
      "picture": "images/products/h5.jpg",
      "old_price": 25000,
      "price": 22000,
    },
    {
      "name": "Navidad",
      "picture": "images/products/h6.jpg",
      "old_price": 25000,
      "price": 22000,
    },
    {
      "name": "Playa",
      "picture": "images/products/h7.jpg",
      "old_price": 25000,
      "price": 23000,
    },
    {
      "name": "Bonita",
      "picture": "images/products/h8.jpg",
      "old_price": 25000,
      "price": 23000,
    },
  ];
  @override
  Widget build(BuildContext context) {
    //final Dimension dimension = Dimension.of(context);

    return GridView.builder(
        itemCount: prod_lista.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_Productos(
            prod_name: prod_lista[index]['name'],
            prod_picture: prod_lista[index]['picture'],
            prod_oldprice: prod_lista[index]['old_price'],
            prod_price: prod_lista[index]['price'],
          );
        });
  }
}

class Single_Productos extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_price;

  Single_Productos(
      {this.prod_name, this.prod_picture, this.prod_oldprice, this.prod_price});

  @override
  Widget build(BuildContext context) {
    final Dimension dimension = Dimension.of(context);
    return Card(
        child: Hero(
            tag: prod_name,
            child: Material(
              child: InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProdDetallePage(
                          prod_det_name: prod_name,
                          prod_det_price: prod_price,
                          prod_det_oldprice: prod_oldprice,
                          prod_det_picture: prod_picture,
                        ))),
                child: GridTile(
                    footer: Container(
                        height: dimension.hp(3.5),
                        color: Colors.white30,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                prod_name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              ),
                            ),
                            Text(
                              "\$${prod_price}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0),
                            ),
                          ],
                        )),
                    child: Image.asset(
                      prod_picture,
                      fit: BoxFit.cover,
                    )),
              ),
            )));
  }
}
