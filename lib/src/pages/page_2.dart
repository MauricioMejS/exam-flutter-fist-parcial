import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrincipalPage extends StatefulWidget {
  @override
  createState() {
    return PrincipalPageSteate();
  }
}

class PrincipalPageSteate extends State<PrincipalPage> {
  //Set Cells
  int _a = 1, _b = 1;
  Color _color1 = Color(0xFF42A5F5);
  Color _color2 = Color(0xFF42A5F5);
  Color _color3 = Color(0xFF42A5F5);
  Color _color4 = Color(0xFF42A5F5);
  Color _color5 = Color(0xFFB2FF59);
  Color _color6 = Color(0xFF42A5F5);
  Color _color7 = Color(0xFF42A5F5);
  Color _color8 = Color(0xFF42A5F5);
  Color _color9 = Color(0xFF42A5F5);

  void setArriba() => {
        setState(() {
          _a++;
          condition();
          condicionPasoDos();
        })
      };

  void setAbajo() => {
        setState(() {
          _a--;
          condition();
          condicionPasoDos();
        })
      };

  void setDerecha() => {
        setState(() {
          _b++;
          condition();
          condicionPasoDos();
        })
      };

  void setIzquierda() => {
        setState(() {
          _b--;
          condition();
          condicionPasoDos();
        })
      };

  void condition() {
    if (_a == 0 && _b == 0) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFFB2FF59);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFF42A5F5);
    } else if (_a == 1 && _b == 0) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFFB2FF59);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFF42A5F5);
    } else if (_a == 2 && _b == 0) {
      _color1 = Color(0xFFB2FF59);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFF42A5F5);
    } else if (_a == 0 && _b == 1) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFFB2FF59);
      _color9 = Color(0xFF42A5F5);
    } else if (_a == 0 && _b == 2) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFFB2FF59);
    } else if (_a == 1 && _b == 1) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFFB2FF59);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFF42A5F5);
    } else if (_a == 2 && _b == 1) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFFB2FF59);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFF42A5F5);
    } else if (_a == 1 && _b == 2) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFF42A5F5);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFFB2FF59);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFF42A5F5);
    } else if (_a == 2 && _b == 2) {
      _color1 = Color(0xFF42A5F5);
      _color2 = Color(0xFF42A5F5);
      _color3 = Color(0xFFB2FF59);
      _color4 = Color(0xFF42A5F5);
      _color5 = Color(0xFF42A5F5);
      _color6 = Color(0xFF42A5F5);
      _color7 = Color(0xFF42A5F5);
      _color8 = Color(0xFF42A5F5);
      _color9 = Color(0xFF42A5F5);
    }
  }

  void condicionPasoDos() {
    if (_a > 2 || _a < 0 || _b > 2 || _b < 0) {
      _a = 1;
      _b = 1;
      showAlertDialog(context);
      inicio();
    }
  }

  void inicio() {
    _a = 1;
    _b = 1;
    _color1 = Color(0xFF42A5F5);
    _color2 = Color(0xFF42A5F5);
    _color3 = Color(0xFF42A5F5);
    _color4 = Color(0xFF42A5F5);
    _color5 = Color(0xFFB2FF59);
    _color6 = Color(0xFF42A5F5);
    _color7 = Color(0xFF42A5F5);
    _color8 = Color(0xFF42A5F5);
    _color9 = Color(0xFF42A5F5);
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Alerta"),
      content: Text("Ha exceddido el limite"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Examen Primer parcial'),
          centerTitle: true,
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 3,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              color: _color1,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color2,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color3,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color4,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color5,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color6,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color7,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color8,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: _color9,
            ),
            Container(
              padding: const EdgeInsets.all(10),
            ),
            OutlinedButton(onPressed: setArriba, child: Text('Arriba')),
            Container(
              padding: const EdgeInsets.all(10),
            ),
            OutlinedButton(onPressed: setIzquierda, child: Text('Izquierda')),
            Container(
              padding: const EdgeInsets.all(10),
            ),
            OutlinedButton(onPressed: setDerecha, child: Text('Derecha')),
            Container(
              padding: const EdgeInsets.all(10),
            ),
            OutlinedButton(onPressed: setAbajo, child: Text('Abajo')),
          ],
        ));
  }
}
