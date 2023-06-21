import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:media_booster_flutter_app/views/screens/videoplayerpage.dart';
import 'package:video_player/video_player.dart';

class Files extends StatefulWidget {
  const Files({Key? key}) : super(key: key);

  @override
  State<Files> createState() => _FilesState();
}

class _FilesState extends State<Files> {
  ImagePicker picker = ImagePicker();
  VideoPlayerController? _videoController;
  ChewieController? _chewieController;

  @override
  void dispose() {
    _videoController?.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  Future<void> pickVideoFromGallery() async {
    final galleryVideo = await picker.pickVideo(source: ImageSource.gallery);
    if (galleryVideo != null) {
      String videoPath = galleryVideo.path;
      _videoController = VideoPlayerController.file(File(videoPath));
      await _videoController?.initialize();
      setState(() {
        _chewieController = ChewieController(
          videoPlayerController: _videoController!,
          autoPlay: true,
          looping: true,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                XFile? galleryVideo =
                    await picker.pickVideo(source: ImageSource.gallery);
                if (galleryVideo != null) {
                  String videoPath = galleryVideo.path;
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          VideoPlayerPage(videoPath: videoPath),
                    ),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                height: 50,
                width: double.infinity,
                child: const Text(
                  "Tap to View Video from Gallery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
