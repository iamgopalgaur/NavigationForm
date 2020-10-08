import 'dart:io';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:tryintern/views/name.dart';
import 'package:tryintern/widgets/bottomText.dart';

import '../models/DataClass.dart';

class Final extends StatelessWidget {
  final newStudent = new Data(null, null, null, null, null, null, null);
  final Data data;
  Final({Key key, @required this.data}) : super(key: key);

  final firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Data'),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () => exit(0),
            child: Text(
              "Exit",
              style: TextStyle(fontSize: 20),
            ),
            shape: CircleBorder(
              side: BorderSide(color: Colors.transparent),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomText(),
      backgroundColor: Colors.red[100],
      body: Container(
        padding: EdgeInsets.all(8),
        height: (mediaQuery.size.height - mediaQuery.padding.top) * 0.8,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 75, 96, .9),
                ),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "${data.sub1}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "${data.sub2}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "${data.sub3}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "${data.sub4}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 75, 96, .9),
                ),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "${data.sub5}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(64, 75, 96, .9),
                ),
                child: ListTile(
                  title: Center(
                    child: Text(
                      "${data.sub6}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: NiceButton(
                radius: 40,
                gradientColors: [secondColor, firstColor],
                text: 'Reset',
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Name(
                        data: newStudent,
                      ),
                    ),
                  );
                },
                background: null,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 50, top: 25),
              child: TypewriterAnimatedTextKit(
                speed: Duration(milliseconds: 100),
                totalRepeatCount: 2,
                onTap: () {},
                text: ["Hello, ${data.name}"],
                textStyle: TextStyle(
                  fontSize: 25,
                ),
                textAlign: TextAlign.start,
                alignment: AlignmentDirectional.topStart,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
