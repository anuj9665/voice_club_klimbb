// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:voice_club/home/model/song.dart';

class PlayListData {
  String image;
  String title;
  String subtitle;
  List<SongData> songsList;
  PlayListData({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.songsList,
  });
}
