import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:tryintern/views/sub6.dart';
import 'package:tryintern/widgets/bottomText.dart';

import '../models/DataClass.dart';

class Subjectfive extends StatelessWidget {
  final Data data;
  Subjectfive({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);

    TextEditingController _sub5Controller = new TextEditingController();
    _sub5Controller.text = data.sub5;

    return Scaffold(
      bottomNavigationBar: BottomText(),
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Student Data'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TypewriterAnimatedTextKit(
              speed: Duration(milliseconds: 250),
              onTap: () {},
              text: ['Enter Subject 5'],
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
                controller: _sub5Controller,
                decoration: new InputDecoration(
                  labelText: 'Subject 5',
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
                data.sub5 = _sub5Controller.text;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Subjectsix(data: data),
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
