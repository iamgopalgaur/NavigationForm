import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:tryintern/widgets/bottomText.dart';
import 'sub3.dart';

import '../models/DataClass.dart';

class Subjecttwo extends StatelessWidget {
  final Data data;
  Subjecttwo({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

    TextEditingController _sub2Controller = new TextEditingController();
    _sub2Controller.text = data.sub2;

    return Scaffold(
      bottomNavigationBar: BottomText(),
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: const Text('Student Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TypewriterAnimatedTextKit(
              speed: Duration(milliseconds: 250),
              onTap: () {},
              text: ['Enter Subject 2'],
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
                controller: _sub2Controller,
                decoration: new InputDecoration(
                  labelText: 'Subject 2',
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
                data.sub2 = _sub2Controller.text;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Subjectthree(data: data),
                  ),
                );
              },
              background: null,
            ),
          ],
        ),
      ),
    );
  }
}
