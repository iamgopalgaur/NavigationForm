import 'package:flutter/material.dart';
import 'package:tryintern/models/DataClass.dart';
import 'package:tryintern/views/name.dart';
import '../widgets/footer.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final newStudent = new Data(null, null, null, null, null, null, null);
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToName();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 4000), () {});

    return true;
  }

  void _navigateToName() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => Name(
          data: newStudent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Shimmer.fromColors(
              period: Duration(milliseconds: 3000),
              baseColor: Colors.white,
              highlightColor: Color.fromRGBO(250, 114, 104, 1),
              child: Footer(),
            )
          ],
        ),
      ),
    );
  }
}
