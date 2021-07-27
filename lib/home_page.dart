import 'package:flutter/material.dart';
import 'parallax_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rateZero = 0;
  double rateOne = 0;
  double rateTwo = 0;
  double rateThree = 0;
  double rateFour = 0;
  double rateFive = 0;
  double rateSix = 0;
  double rateSeven = 0;
  double rateEight = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (v) {
          if (v is ScrollUpdateNotification) {
            setState(() {
              rateEight -= v.scrollDelta! / 1;
              rateSeven -= v.scrollDelta! / 1.5;
              rateSix -= v.scrollDelta! / 2;
              rateFive -= v.scrollDelta! / 2.5;
              rateFour -= v.scrollDelta! / 3;
              rateThree -= v.scrollDelta! / 3.5;
              rateTwo -= v.scrollDelta! / 4;
              rateOne -= v.scrollDelta! / 4.5;
              rateZero -= v.scrollDelta! / 5;
            });
          }
          return true;

          ///throw "";
        },
        child: Stack(
          children: [
            ParallaxWidget(top: rateZero, asset: 'parallax0'),
            ParallaxWidget(top: rateOne, asset: 'parallax1'),
            ParallaxWidget(top: rateTwo, asset: 'parallax2'),
            ParallaxWidget(top: rateThree, asset: 'parallax3'),
            ParallaxWidget(top: rateFour, asset: 'parallax4'),
            ParallaxWidget(top: rateFive, asset: 'parallax5'),
            ParallaxWidget(top: rateSix, asset: 'parallax6'),
            ParallaxWidget(top: rateSeven, asset: 'parallax7'),
            ParallaxWidget(top: rateEight, asset: 'parallax8'),
            ListView(
              children: [
                Container(
                  height: 600,
                  color: Colors.transparent,
                ),
                Container(
                  width: double.infinity,
                  color: const Color(0xff210002),
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "Parallax Screen",
                        style: TextStyle(
                          fontSize: 26,
                          fontFamily: "MontSerrat-ExtraLight",
                          letterSpacing: 2.0,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Flutter',
                        style: TextStyle(
                          fontSize: 40,
                          color: Color(0xffffaf00),
                          fontFamily: "MontSerrat-Regular",
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 220,
                        child: Divider(
                          height: 1,
                          thickness: 1,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Made By:",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Montserrat-ExtraLight",
                          letterSpacing: 1.3,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hama Dev",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Montserrat-SemiBold",
                          letterSpacing: 1.8,
                          color: Color(0xffffaf00),
                        ),
                      ),
                      SizedBox(
                        height: 65,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
