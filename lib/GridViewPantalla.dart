import 'package:flutter/material.dart';

class GridViewPantalla extends StatefulWidget {
  GridViewPantalla(this.position);

  final int position;

  @override
  State<StatefulWidget> createState() => _GridViewPantalla();
}

class _GridViewPantalla extends State<GridViewPantalla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detalle de ${widget.position}"),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20.0),
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: List.generate(10, (index) {
            return Center(
              child: GestureDetector(child: GridTile(child: Text("$index")),
              onTap: () {
                Navigator.pop(context, index);
            },),
            );
          })
        ));
  }
}
