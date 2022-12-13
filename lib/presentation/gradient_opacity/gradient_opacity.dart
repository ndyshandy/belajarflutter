import 'package:flutter/material.dart';

class GradientOpacity extends StatelessWidget {
  const GradientOpacity({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ).createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
          },
          blendMode: BlendMode.dstIn,
          child: const Image(
            width: 300,
            image: AssetImage("assets/images/sunset2.jpg"),
          ),
        ),
      ),
    );
  }
}
