import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

String input = '', value = '', finalresult = '';
double dresult;
int value1, value2, result = 0;
bool add = false, sub = false, mul = false, div = false;

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Calculator'),
          centerTitle: true,
        ),
        body: home(),
      ),
    );
  }
}

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Row(
            children: <Widget>[
              Container(
                width: size.size.width,
                decoration: BoxDecoration(
                  color: Colors.red[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(input,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),),
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    ),
                    Container(
                      child: Text('= $finalresult',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),),
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '1';
                      value = value + '1';
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('1')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '2';
                      value = value + '2';
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('2')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '3';
                      value = value + '3';
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('3')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      value1 = int.parse(value);
                      add = true;
                      sub = false;
                      mul = false;
                      div = false;
                      input = input + '+';
                      value = '';
                      print(value1);
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('+')),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '4';
                      value = value + '4';
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('4')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '5';
                      value = value + '5';
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('5')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '6';
                      value = value + '6';
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('6')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      value1 = int.parse(value);
                      add = false;
                      sub = true;
                      mul = false;
                      div = false;
                      input = input + '-';
                      value = '';
                      print(value1);
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('-')),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap:(){
                    setState(() {
                      input = input + '7';
                      value = value + '7';
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('7')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '8';
                      value = value + '8';
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('8')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '9';
                      value = value + '9';
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('9')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      value1 = int.parse(value);
                      add = false;
                      sub = false;
                      mul = true;
                      div = false;
                      input = input + '*';
                      value = '';
                      print(value1);
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('*')),
                  ),
                ),
              ),

            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: <Widget>[
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = '';
                      value = '';
                      result = 0;
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('C')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      input = input + '0';
                      value = value + '0';
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('0')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      value2 = int.parse(value);
                      print(value2);
                      if(add){
                        result = (value2 + value1);
                        finalresult = result.toString();
                      }
                      if(sub){
                        result = (value1 - value2);
                        finalresult = result.toString();
                      }
                      if(mul){
                        result = (value2 * value1);
                        finalresult = result.toString();
                      }
                      if(div){
                        dresult = value1/value2;
                        finalresult = dresult.toString();
                      }
                      input = '';
                      value = '';
                    });
                  },
                  child: Container(
                    color: Colors.red[300],
                    child: Center(child: Text('=')),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      value1 = int.parse(value);
                      add = false;
                      sub = false;
                      mul = false;
                      div = true;
                      input = input + '/';
                      value = '';
                      print(value1);
                    });
                  },
                  child: Container(
                    color: Colors.redAccent,
                    child: Center(child: Text('/')),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

