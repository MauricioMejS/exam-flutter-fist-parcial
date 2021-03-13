import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() {
    return CountPageState();
  }
}

class CountPageState extends State<CountPage> {
  final _style = new TextStyle(fontSize: 30, color: Colors.blue);
  final _style2 = new TextStyle(fontSize: 20, color: Colors.black38);

  int _x = 5, _y = 5, dir = 1;
  String _instructions = "";

  void setUpInstruction() => {
        setState(() {
          switch (dir) {
            case 1:
              _y++;
              break;
            case 2:
              _x++;
              break;
            case 3:
              _y--;
              break;
            case 4:
              _x--;
          }
          evaluar();
        })
      };

  void setRInstruction() => {
        setState(() {
          if (dir < 4) {
            dir++;
          } else {
            dir = 1;
          }
        })
      };

  void setLInstruction() => {
        setState(() {
          if (dir == 1) {
            dir = 4;
          } else {
            dir--;
          }
        })
      };

  void setDInstruction() => {
        setState(() {
          switch (dir) {
            case 1:
              _y--;
              break;
            case 2:
              _x--;
              break;
            case 3:
              _y++;
              break;
            case 4:
              _x++;
          }
          evaluar();
        })
      };

  void evaluar() {
    _instructions = "";
    if (_y > 10) {
      _instructions = "Te has salido del límite superior, ";
    } else if (_y < 0) {
      _instructions = "Te has salido del límite inferior, ";
    } else if (_x > 10) {
      _instructions = "Te has salido del límite derecho, ";
    } else if (_x < 0) {
      _instructions = "Te has salido del límite izquierdo, ";
    }
    _instructions += "x: $_x, y: $_y";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disposición de Widgets'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (Text(
              'GRID',
              style: _style,
            )),
            (Text('$_instructions', style: _style2)),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      onPressed: setUpInstruction, child: Text('Adelante')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      onPressed: setLInstruction,
                      child: Text('Girar Izquierda')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(
                      onPressed: setRInstruction, child: Text('Girar Derecha')),
                  Container(
                    padding: const EdgeInsets.all(8),
                  ),
                  FlatButton(onPressed: setDInstruction, child: Text('Atras')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
