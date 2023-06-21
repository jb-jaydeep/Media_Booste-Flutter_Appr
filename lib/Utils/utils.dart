import 'package:video_player/video_player.dart';

// List Video = [
//   "assets/video/Kaun_Tuje_Full_Video.mp4",
//   "assets/video/Khairiyat_Video.mp4",
//   "assets/video/Pal_Full_Song.mp4",
//   "assets/video/Pal_Pal_Dil_Ke_Paas.mp4",
//   "assets/video/Yaari_(Official_Video).mp4",
// ];
// List VideoImage = [
//   'assets/images/1.png',
//   'assets/images/2.png',
//   'assets/images/3.png',
//   'assets/images/4.png',
//   'assets/images/5.png',
// ];
// VideoPlayerController? videoPlayerController;
// int currentIndex = 0;
List<Map<dynamic, dynamic>> MyMusicList = [
  {
    "Music":
        "assets/Audio/audio/Dil Galti Kar Baitha Hai(PagalWorld.com.se).mp3",
    "Mname": "Dil Galti Kar Baitha",
    "Image": "assets/Audio/images/Dil Galti Kar Baitha Hai.jpg",
    "AName": "Jubin Nautiya",
  },
  {
    "Music": "assets/Audio/audio/Manike(PagalWorld.com.se).mp3",
    "Mname": "Manike",
    "Image": "assets/Audio/images/Manike.jpg",
    "AName": "Jubin Nautiya",
  },
  {
    "Music": "assets/Audio/audio/_ Heer Ranjha(PagalWorld.com.se).mp3",
    "Mname": " Heer Ranjha",
    "Image": "assets/Audio/images/heer rhnja img.jpg",
    "AName": "Rito Riba",
  },
  {
    "Music": "assets/Audio/audio/O Bedardeya(PagalWorld.com.se).mp3",
    "Mname": "O Bedardeya",
    "Image": "assets/Audio/images/O Bedardeya.jpg",
    "AName": "Arjit Singh",
  },
  {
    "Music": "assets/Audio/audio/Kahani Suno(PagalWorld.com.se).mp3",
    "Mname": "Kahani Suno",
    "Image": "assets/Audio/images/khani suno img.jpg",
    "AName": "Kaifi Khalil",
  },
  {
    "Music": "assets/Audio/audio/Malang Sajna(PagalWorld.com.se).mp3",
    "Mname": "Malang Sajna",
    "Image": "assets/Audio/images/malag sajna img.jpg",
    "AName": "Sachet Parmpara",
  },
  {
    "Music": "assets/Audio/audio/Tu Maan Meri Jaan.mp3",
    "Mname": "Tu Maan Meri Jaan",
    "Image": "assets/Audio/images/maan meri jann.jpg",
    "AName": "King",
  },
  {
    "Music": "assets/Audio/audio/Jhoome Jo Pathaan.mp3",
    "Mname": "Jhoome Jo Pathaan",
    "Image": "assets/Audio/images/joome.png",
    "AName": "Arjit Singh",
  },
  {
    "Music": "assets/Audio/audio/kesriya.mp3",
    "Mname": "kesriya",
    "Image": "assets/Audio/images/kesriya.jpg",
    "AName": "Arjit Singh",
  },
  {
    "Music": "assets/Audio/audio/rattan lambiyan.mp3",
    "Mname": "Rattan lambiyan",
    "Image": "assets/Audio/images/rataan lambiya.jpg",
    "AName": "Jubin Nautiya",
  },
  {
    "Music": "assets/Audio/audio/Kaali Car Raftaar 128 Kbps.mp3",
    "Mname": "kali",
    "Image": "assets/Audio/images/kaali-car-song-status..jpg",
    "AName": " Asees Kaur",
  },
  {
    "Music": "assets/Audio/audio/Meri Zindagi Hai Tu(PagalWorld.com.se).mp3",
    "Mname": "Meri Zindagi Hai Tu",
    "Image": "assets/Audio/images/meri jindgi hai tu img.jpg",
    "AName": "Jubin Nautiya",
  },
  {
    "Music": "assets/Audio/audio/Srivalli(PagalWorld.com.se).mp3",
    "Mname": "Srivalli",
    "Image": "assets/Audio/images/srivali img.jpg",
    "AName": "Javed Ali",
  },
  {
    "Music": "assets/Audio/audio/Meri Maa Meri Jaan(PagalWorld.com.se).mp3",
    "Mname": "Meri Maa Meri Jaan",
    "Image": "assets/Audio/images/Meri Maa Meri Jaan.jpg",
    "AName": "Ravi Maliya",
  },
];

String Videopath = "assets/video/videos/";
String Imagepath = "assets/video/images/";
List<Map> Videolist = [
  {
    "VImage": Imagepath + "nathni image.jpg",
    "Video": Videopath + "nathni.mp4",
    "Vname": "Nathni",
  },
  {
    "VImage": Imagepath + "1.png",
    "Video": Videopath + "Kaun_Tuje_Full_Video.mp4",
    "Vname": "Nathni",
  },
  {
    "VImage": Imagepath + "2.png",
    "Video": Videopath + "Khairiyat_Video.mp4",
    "Vname": "Nathni",
  },
  {
    "VImage": Imagepath + "3.png",
    "Video": Videopath + "Pal_Full_Song.mp4",
    "Vname": "Nathni",
  },
  {
    "VImage": Imagepath + "4.png",
    "Video": Videopath + "Pal_Pal_Dil_Ke_Paas.mp4",
    "Vname": "Nathni",
  },
  {
    "VImage": Imagepath + "5.png",
    "Video": Videopath + "Yaari_(Official_Video).mp4",
    "Vname": "Nathni",
  },
  {
    "VImage": Imagepath + "nadidosh2.jpg",
    "Video": Videopath + "khamma.mp4",
    "Vname": "Khamma-Nadidosh",
  },
  {
    "VImage": Imagepath + "khani_suno.jpeg",
    "Video": Videopath + "khani_suno.mp4",
    "Vname": "Khani_suno",
  },
  {
    "VImage": Imagepath + "heer_ranjha.jpeg",
    "Video": Videopath + "heer_ranjha.mp4",
    "Vname": "Heer_ranjha",
  },
  {
    "VImage": Imagepath + "malang_sjna.jpeg",
    "Video": Videopath + "malang_sjna.mp4",
    "Vname": "Malang Sajna",
  },
  {
    "VImage": Imagepath + "rbba_janda.jpeg",
    "Video": Videopath + "Rabba_janda.mp4",
    "Vname": "Rabba Janda",
  },
];
