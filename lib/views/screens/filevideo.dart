import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class filevideo extends StatefulWidget {
  const filevideo({super.key});

  @override
  State<filevideo> createState() => _filevideoState();
}

class _filevideoState extends State<filevideo> {
  late VideoPlayerController Myvideo;
  late ChewieController Mychewiecontroller;
  @override
  void initState() {
    super.initState();
    // Myvideo = VideoPlayerController.asset(widget.video)
    //   ..initialize().then((value) => setState(() {}));
    Mychewiecontroller = ChewieController(
        videoPlayerController: Myvideo,
        aspectRatio: 4 / 2,
        autoPlay: false,
        allowFullScreen: true);
  }

  void dispose() {
    super.dispose();
    Myvideo.dispose();
    Mychewiecontroller.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
