import 'package:flutter/material.dart';
import 'package:media_booster_flutter_app/views/screens/videoPage.dart';

import '../../Utils/utils.dart';

void main() {
  runApp(const Video());
}

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: Videolist.map(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Video_page(
                        Name: e['Vname'],
                        video: e['Video'],
                      ),
                    ),
                  );
                },
                child: Center(
                  child: Container(
                    height: 200,
                    width: 330,
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      image: DecorationImage(
                          image: AssetImage(
                            e['VImage'],
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.play_circle_filled,
                      color: Colors.white.withOpacity(0.7),
                      size: 50,
                    ),
                  ),
                ),
              ),
            ).toList(),
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
