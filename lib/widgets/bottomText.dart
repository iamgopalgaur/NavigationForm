import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        margin: EdgeInsets.only(right: 140),
        height: 85,
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'STUDY',
                    style: TextStyle(
                      fontSize: 20,
                      shadows: <Shadow>[
                        Shadow(
                          blurRadius: 25,
                          color: Colors.black,
                          offset: Offset.fromDirection(120, 12),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  'table',
                  style: TextStyle(
                    fontSize: 35,
                    shadows: <Shadow>[
                      Shadow(
                        blurRadius: 25,
                        color: Colors.black,
                        offset: Offset.fromDirection(120, 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 40),
              alignment: Alignment.centerLeft,
              child: Text(
                'CARE A SMILE',
                style: TextStyle(
                  fontSize: 15,
                  // fontFamily: 'Pacifico',
                  shadows: <Shadow>[
                    Shadow(
                      blurRadius: 25,
                      color: Colors.black,
                      offset: Offset.fromDirection(120, 12),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
