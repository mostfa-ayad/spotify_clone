// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';

class SongEntity {
  String title;
  String artist;
  num duration;
  Timestamp releaseDate;
  SongEntity({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
  });
}
