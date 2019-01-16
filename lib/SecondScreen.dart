import 'package:flutter/material.dart';
import 'package:prueba_flutter/GridViewPantalla.dart';

class SecondScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SecondScreenState();
  }
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (c, p) {
            return ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Element $p"),
              subtitle: Text("subtitle $p"),
              onTap: () async{
                final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GridViewPantalla(p)),
                );
                showAboutDialog(context: context, children: [Text("adios $result")]);
              },
            );
          },
          itemCount: 20,
        ));
  }
}
