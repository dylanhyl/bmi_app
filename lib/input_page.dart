import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                _Card(color: Color(0xFF1D1E33)),
                _Card(color: Color(0xFF1D1E33)),
              ],
            )),
            _Card(color: Color(0xFF1D1E33)),
            Expanded(
                child: Row(
              children: <Widget>[
                _Card(color: Color(0xFF1D1E33)),
                _Card(color: Color(0xFF1D1E33)),
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}

class _Card extends StatelessWidget {
  final Color color;

  _Card({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    ));
  }
}
