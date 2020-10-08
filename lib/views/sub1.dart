import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:tryintern/widgets/bottomText.dart';
import 'sub2.dart';

import '../models/DataClass.dart';

class Subjectone extends StatelessWidget {
  final Data data;
  Subjectone({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

    TextEditingController _sub1Controller = new TextEditingController();
    _sub1Controller.text = data.sub1;
    return Scaffold(
      bottomNavigationBar: BottomText(),
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: const Text('Student Data'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TypewriterAnimatedTextKit(
            speed: Duration(milliseconds: 250),
            onTap: () {},
            text: ['Enter Subject 1'],
            textStyle: TextStyle(
              fontSize: 30.0,
            ),
            totalRepeatCount: 1,
            textAlign: TextAlign.start,
            alignment: AlignmentDirectional.topStart,
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextFormField(
              textCapitalization: TextCapitalization.words,
              controller: _sub1Controller,
              decoration: new InputDecoration(
                labelText: 'Subject 1',
                labelStyle: TextStyle(fontSize: 25),
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                  borderSide: new BorderSide(),
                ),
              ),
              keyboardType: TextInputType.name,
            ),
          ),
          NiceButton(
            radius: 40,
            padding: const EdgeInsets.all(15),
            gradientColors: [secondColor, firstColor],
            text: 'Continue',
            onPressed: () {
              data.sub1 = _sub1Controller.text;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Subjecttwo(data: data)),
              );
            },
            background: null,
          ),
        ],
      ),
    );
  }
}
