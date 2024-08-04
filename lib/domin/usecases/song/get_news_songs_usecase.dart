import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/core/usecase/usecase.dart';
import 'package:spotify_clone/domin/entities/song_entity.dart';
import 'package:spotify_clone/domin/repository/song_repository.dart';
import 'package:spotify_clone/service_locator.dart';

class GetNewsSongsUsecase {
  Future<Either> call() async {
    return await sl<SongRepository>().getNews();
  }
}
