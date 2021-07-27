import 'package:flutter/material.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({Key? key, required this.asset, required this.top})
      : super(key: key);
  final String asset;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: -85,
      top: top,
      child: SizedBox(
        height: 550,
        width: 900,
        child: Image.asset("assets/$asset.png", fit: BoxFit.cover),
      ),
    );
  }
}
