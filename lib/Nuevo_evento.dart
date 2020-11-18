
import 'package:flutter/material.dart';

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ModalTrigger(),
    ),
  );
}
}

class ModalTrigger extends StatelessWidget {
  _showModalBottomSheet(context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Text( "Cual es su nuevo eventos:"),
              TextField(
                decoration: InputDecoration(labelText: "Nombre"),
              ),
              Text( ""),
              Text( "En que fecha:"),
              TextField(
                decoration: InputDecoration(labelText: "fecha"),
              ),
              RaisedButton(
                color: Colors.green,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        _showModalBottomSheet(context);
      },
      fillColor: Colors.black,
    );
  }
}
