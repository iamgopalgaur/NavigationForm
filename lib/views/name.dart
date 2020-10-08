import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:tryintern/widgets/bottomText.dart';
import 'sub1.dart';

import '../models/DataClass.dart';

class Name extends StatelessWidget {
  final Data data;
  Name({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);
    TextEditingController _nameController = new TextEditingController();
    _nameController.text = data.name;

    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('Student Data'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TypewriterAnimatedTextKit(
            speed: Duration(milliseconds: 250),
            onTap: () {},
            text: ['Enter your name'],
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
              controller: _nameController,
              decoration: new InputDecoration(
                labelText: 'Name',
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
              data.name = _nameController.text;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Subjectone(data: data)),
              );
            },
            background: null,
          ),
        ],
      ),
      bottomNavigationBar: BottomText(),
    );
  }
}
