import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:spotify_clone/data/model/song/song_model.dart';
import 'package:spotify_clone/domin/entities/song_entity.dart';

abstract class SongFirebaseService {
  Future<Either> getNews(SongModel song);
}

class SongFirebaseServiceImpl extends SongFirebaseService {
  @override
  Future<Either> getNews(SongModel song) async {
    try {
      List<SongEntity> list = [];
      var data = await FirebaseFirestore.instance.collection("Songs").get();
      for (var element in data.docs) {
        var dataModel = SongModel.fromMap(element.data());
        list.add(dataModel.toEntity());
      }
      return right(list);
    } catch (e) {
      return left(e.toString());
    }
  }
}
