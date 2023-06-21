import 'package:flutter/material.dart';

import '../../Utils/utils.dart';
import 'AudioPage.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              children: MyMusicList.map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Musicpage(
                              AName: e['AName'],
                              Image: e['Image'],
                              Music: e['Music'],
                              Name: e['Mname'],
                            )));
                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.all(16),
                      alignment: Alignment.center,
                      height: 200,
                      width: 330,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(
                            image: AssetImage(
                              e['Image'],
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
                //Card(
                //   margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                //   elevation: 3,
                //   shape: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(10)),
                //   borderOnForeground: false,
                //   child: ListTile(
                //     onTap: () {
                //       Navigator.of(context).push(MaterialPageRoute(
                //           builder: (context) => Musicpage(
                //                 AName: e['AName'],
                //                 Image: e['Image'],
                //                 Music: e['Music'],
                //                 Name: e['Mname'],
                //               )));
                //     },
                //     tileColor: Colors.greenAccent,
                //     leading: CircleAvatar(
                //       radius: 30,
                //       backgroundImage: AssetImage(
                //         e['Image'],
                //       ),
                //     ),
                //     title: Text(e['Mname']),
                //     subtitle: Text(e["AName"]),
                //     trailing: const Icon(Icons.play_arrow),
                //     shape: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(10),
                //         borderSide:
                //             const BorderSide(color: Colors.transparent)),
                //   ),
                // ),
              ).toList(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
