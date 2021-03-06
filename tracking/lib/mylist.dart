import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mytracking.dart';

class Mylist extends StatefulWidget {
  const Mylist({ Key key }) : super(key: key);

  @override
  _MylistState createState() => _MylistState();
}

class _MylistState extends State<Mylist> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10),
            Row(
              children: [
                // SizedBox(width: 10),
                Expanded(
                  flex: 0,
                  child: Image.asset(
                    "assets/icons/ship.png",
                    width: 40,
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //가로에 첫번째 자리에서 시작되는 것
                    children: [
                      Text(
                        "아마존",
                        style: TextStyle(
                            fontSize: 15, 
                            color: const Color(0xff4E4E4E),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "통관목록심사완료",
                            style: TextStyle(
                                fontSize: 15,
                                color: const Color(0xff5B83AD),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "입항 MM.DD",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Column(
                    children: [
                      Text(
                        "US",
                        style: TextStyle(
                            fontSize: 16,
                            color: const Color(0xff5B83AD),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "택배사",
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  value: 0.4622,
                  valueColor: AlwaysStoppedAnimation(const Color(0xff5B83AD)),
                  backgroundColor: const Color(0xffD5D5D5),
                ),
              ),
            ),
            
          ],
        ),
       onPressed: () {
          Navigator.push(context,
              MaterialPageRoute<void>(builder: (BuildContext context) {
            return Mytracking();
          }));
        },
        );

  }
}