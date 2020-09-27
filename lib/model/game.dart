import 'package:flutter/rendering.dart';
import 'package:gammingproject/model/game_model/cover.dart';
import 'package:gammingproject/model/game_model/genre.dart';
import 'package:gammingproject/model/game_model/player_perspective.dart';
import 'package:gammingproject/model/game_model/screenshot.dart';
import 'game_model/mode.dart';
import 'game_model/video.dart';

class GameModel{
  final int id;
  final CoverModel cover;
  final int createdAt;
  final int firstRelease;
  final List<ModeModel> modes;
  final List<GenreModel> genres;
  final List<PlayerPerspectiveModel> perspectives;
  final double popularity;
  final List<ScreenshotModel> screenshots;
  final String summary;
  final List<VideoModel> videos;
  final double rating;
  final String name;

  GameModel(this.id, this.cover, this.createdAt, this.firstRelease, this.modes, this.genres, this.perspectives, this.popularity, this.screenshots, this.summary, this.videos, this.rating, this.name);

  GameModel.fromJson(Map<String, dynamic> json)
  :  id = json["id"],
        cover = json["cover"] == null ? null : CoverModel.fromJson(json["cover"]),
        createdAt = json["created_at"],
        firstRelease = json["first_release_date"],
        modes = json["game_modes"] == null ? null : (json["game_modes"] as List).map((i) => new ModeModel.fromJson(i)).toList(),
        genres = json["genres"] == null ? null : (json["genres"] as List).map((i) => new GenreModel.fromJson(i)).toList(),
        perspectives = json["player_perspectives"] == null ? null : (json["player_perspectives"] as List).map((i) => new PlayerPerspectiveModel.fromJson(i)).toList(),
        popularity = json["popularity"],
        screenshots = json["screenshots"] == null ? null : (json["screenshots"] as List).map((i) => new ScreenshotModel.fromJson(i)).toList(),
        summary = json["summary"],
        videos = json["videos"] == null ? null : (json["videos"] as List).map((i) => new VideoModel.fromJson(i)).toList(),
        rating = json["total_rating"],
        name = json["name"];
}
