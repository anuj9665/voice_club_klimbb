import 'package:voice_club/home/model/playlist.dart';
import 'package:voice_club/home/model/song.dart';

class HomeData {
  static List<PlayListData> playlistList = [
    PlayListData(
      image: "assets/images/r&b.png",
      title: "R&B Playlist",
      subtitle: "Chill your mind",
      songsList: [
        SongData(
            image: "assets/images/you_right.png",
            title: "You Right",
            subtitle: "Doja Cat, The Weeknd",
            duration: "3:58"),
        SongData(
            image: "assets/images/bye.png",
            title: "Bye Bye",
            subtitle: "MarshMello, Juice World",
            duration: "2.09"),
        SongData(
            image: "assets/images/like_you.png",
            title: "I Like you",
            subtitle: "Post malone, Doja Cat",
            duration: "4:03"),
        SongData(
            image: "assets/images/fountains.png",
            title: "Fountains",
            subtitle: "Drake, Tems",
            duration: "3:18"),
        SongData(
            image: "assets/images/bye.png",
            title: "Bye Bye",
            subtitle: "MarshMello, Juice World",
            duration: "2.09"),
        SongData(
            image: "assets/images/like_you.png",
            title: "I Like you",
            subtitle: "Post malone, Doja Cat",
            duration: "4:03"),
        SongData(
            image: "assets/images/fountains.png",
            title: "Fountains",
            subtitle: "Drake, Tems",
            duration: "3:18"),
      ],
    ),
    PlayListData(
        image: "assets/images/dailymix1.png",
        title: "Daily Mix 2",
        songsList: [],
        subtitle: "Made for you"),
  ];

  static List<SongData> fvrtSongs = [
    SongData(
        image: "assets/images/bye.png",
        title: "Bye Bye",
        subtitle: "MarshMello, Juice World",
        duration: "2.09"),
    SongData(
        image: "assets/images/like_you.png",
        title: "I Like you",
        subtitle: "Post malone, Doja Cat",
        duration: "4:03"),
    SongData(
        image: "assets/images/fountains.png",
        title: "Fountains",
        subtitle: "Drake, Tems",
        duration: "3:18"),
  ];
}
