import 'package:flutter/material.dart';
import 'package:shopjh/src/utils/utils.dart';

class ProdDetallePage extends StatefulWidget {
  final prod_det_name;
  final prod_det_picture;
  final prod_det_oldprice;
  final prod_det_price;

  ProdDetallePage(
      {this.prod_det_name,
      this.prod_det_picture,
      this.prod_det_oldprice,
      this.prod_det_price});

  @override
  _ProdDetallePageState createState() => _ProdDetallePageState();
}

class _ProdDetallePageState extends State<ProdDetallePage> {
  @override
  Widget build(BuildContext context) {
    final Dimension dimension = Dimension.of(context);
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Motel Eros'),
        actions: [
          IconButton(
              icon: Icon(Icons.search), color: Colors.white, onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_basket),
              color: Colors.white,
              onPressed: () {}),
        ],
      ),
      //
      body: ListView(
        children: [
          Container(
            //height: 300.0,
            height: dimension.hp(38),
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.prod_det_picture,
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                height: dimension.hp(6),
                color: Colors.white54,
                child: ListTile(
                  leading: Text(
                    widget.prod_det_name,
                    style: TextStyle(
                        fontFamily: 'fonts/Dosis-Medium.ttf',
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 18),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "\$${widget.prod_det_oldprice}",
                          style: TextStyle(
                              fontFamily: 'fonts/Dosis-Medium.ttf',
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              fontSize: 18,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "\$${widget.prod_det_price}",
                          style: TextStyle(
                              fontFamily: 'fonts/Dosis-Medium.ttf',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //color: Colors.black26,
          ),
          //
          Row(
            children: [
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Tarifas'),
                        content: Text('Precios para esta habitación'),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Text('Salir'),
                          )
                        ],
                      );
                    },
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Size",
                        style: TextStyle(
                            fontFamily: 'fonts/Dosis-Medium.ttf',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Colores'),
                        content: Text('Precios para esta habitación'),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Text('Salir'),
                          )
                        ],
                      );
                    },
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Color",
                        style: TextStyle(
                            fontFamily: 'fonts/Dosis-Medium.ttf',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
              //
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('QTY'),
                        content: Text('Precios para esta habitación'),
                        actions: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(context).pop(context);
                            },
                            child: Text('Salir'),
                          )
                        ],
                      );
                    },
                  );
                },
                color: Colors.white,
                textColor: Colors.grey,
                elevation: 0.2,
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Qty",
                        style: TextStyle(
                            fontFamily: 'fonts/Dosis-Medium.ttf',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 16),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ],
                ),
              )),
            ],
          ),
          //
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: Text('Buy now'),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  onPressed: () {}),
            ],
          ),
          //
          //Divider(color: Colors.green),
          Container(
            margin: EdgeInsets.only(top: dimension.dp(1)),
            padding: EdgeInsets.all(dimension.wp(1)),
            child: ListTile(
              title: Text('Detalle de la habitación'),
              subtitle: Text('Las habitaciones tienden a caer en categorías cuando se trata de bandas de precios, el tipo de decoración, si una habitación está junto a la piscina o al lado del océano … Las imágenes y descripciones de las principales características y servicios que se aplican a cada categoría de habitación generalmente se incluirán en el sitio web de la marca de un hotel y en sus canales de distribución.'),
            ),
          ),
          Divider(height: dimension.hp(1.5)),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Habitación',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
                child: Text(
                  widget.prod_det_name,
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Precio por hora',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 5.0, 5.0),
                child: Text(
                  "\$${widget.prod_det_price}",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Producto',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 5.0, 5.0, 5.0),
                child: Text(
                  'Producto',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
