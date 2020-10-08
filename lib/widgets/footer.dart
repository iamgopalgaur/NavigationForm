import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text(
                  'STUDY',
                  style: TextStyle(
                    fontSize: 30,
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
                  fontSize: 60,
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
          Text(
            'CARE A SMILE',
            style: TextStyle(
              fontSize: 20,
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
        ],
      ),
    );
  }
}
