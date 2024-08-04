// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_clone/domin/entities/song_entity.dart';

class SongModel {
  String title;
  String artist;
  num duration;
  Timestamp releaseDate;
  SongModel({
    required this.title,
    required this.artist,
    required this.duration,
    required this.releaseDate,
  });

  SongModel copyWith({
    String? title,
    String? artist,
    num? duration,
    Timestamp? releaseDate,
  }) {
    return SongModel(
      title: title ?? this.title,
      artist: artist ?? this.artist,
      duration: duration ?? this.duration,
      releaseDate: releaseDate ?? this.releaseDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'artist': artist,
      'duration': duration,
      'releaseDate': releaseDate,
    };
  }

  factory SongModel.fromMap(Map<String, dynamic> map) {
    return SongModel(
      title: map['title'] as String,
      artist: map['artist'] as String,
      duration: map['duration'] as num,
      releaseDate: map['duration'] as Timestamp,
    );
  }
}

extension SongModelx on SongModel {
  SongEntity toEntity() {
    return SongEntity(
        title: title,
        artist: artist,
        duration: duration,
        releaseDate: releaseDate);
  }
}
