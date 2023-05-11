import 'package:flutter/material.dart';

class AudioBtn extends StatefulWidget {
  const AudioBtn({Key key, this.ikonPlay, this.ikonPause}) : super(key: key);
  final IconData ikonPlay, ikonPause;

  @override
  State<AudioBtn> createState() => _AudioBtnState(ikonPlay, ikonPause);
}

class _AudioBtnState extends State<AudioBtn> {
  bool isPressed = false;
  IconData ikonPlay, ikonPause;

  _AudioBtnState(this.ikonPlay, this.ikonPause);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapUp: (details) {
        setState(() {
          isPressed = !isPressed;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
    );
  }
}
