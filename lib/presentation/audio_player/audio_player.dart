import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerPage extends StatefulWidget {
  const AudioPlayerPage({Key key}) : super(key: key);

  @override
  State<AudioPlayerPage> createState() => _AudioPlayerPageState();
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  AudioPlayer audioPlayer;
  String durasi = "00:00:00";

  _AudioPlayerPageState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.release);
  }

  void playSound(String url) async {
    await audioPlayer.play(UrlSource(url));
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  playSound("https://s3.vinhostmedia.com:10945/;");
                },
                icon: Icon(
                  Icons.play_circle,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  pauseSound();
                },
                icon: Icon(
                  Icons.pause_circle,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  stopSound();
                },
                icon: Icon(
                  Icons.stop_circle,
                  size: 30,
                ),
              ),
              Text(
                durasi,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
