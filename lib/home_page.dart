import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final FlickManager flickManager = FlickManager(
    videoPlayerController: VideoPlayerController.asset('assets/shake_it.mp4'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade800,
        title: const Text("Swiffer Video"),
        centerTitle: true,
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(flickManager: flickManager),
        ),
      ),
    );
  }
}
