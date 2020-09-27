import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:gammingproject/model/game_response.dart';
import 'package:http/http.dart' as http;

class GameRepository {
  static String mainUrl = "https://api-v3.igdb.com";
  var gameListUrl = '$mainUrl/games';
  final String apiKey = "1e9738dcf5ecb4805d473a305125c3d2";
  final Dio _dio = Dio();


  Future<GameResponse> getGames2(int platformId) async {
    var response = await http.post(gameListUrl,
        headers: {"Accept": "application/json", "user-key": "$apiKey"},
        body: "fields artworks,bundles,category,checksum,collection,cover.*,created_at,first_release_date,follows,game_engines.*,game_modes.*,release_dates, genres.*,hypes,keywords.*,multiplayer_modes,name,parent_game,platforms.*, platforms.platform_logo.*, player_perspectives.*,popularity,rating,rating_count,screenshots.*,slug,standalone_expansions,status,storyline,summary,tags,time_to_beat,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos.*;where cover.image_id != null & genres != null & videos != null & created_at > 1252214987 & platforms = $platformId & rating > 80; limit 100; sort popularity desc;");
    print("${response.statusCode}");
    return GameResponse.fromJson(jsonDecode(response.body));
  }
  Future<GameResponse> getSlider(int platformId) async {
    var response = await http.post(gameListUrl,
        headers: {"Accept": "application/json", "user-key": "$apiKey"},
        body: "fields artworks,bundles,category,checksum,collection,cover.*,created_at,first_release_date,follows,game_engines.*,game_modes.*,release_dates, genres.*,hypes,keywords.*,multiplayer_modes,name,parent_game,platforms.*, platforms.platform_logo.*, player_perspectives.*,popularity,rating,rating_count,screenshots.*,slug,standalone_expansions,status,storyline,summary,tags,time_to_beat,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos.*;where cover.image_id != null & screenshots != null & created_at > 1252214987 & platforms = $platformId; limit 100; sort created_at asc;");
    print("${response.statusCode}");
    return GameResponse.fromJson(jsonDecode(response.body));
  }
}

//class GameRepository {
//  static String mainUrl = 'https://api-v3.igdb.com';
//  var gameListUrl = '$mainUrl/games';
//  final String apiKey  = "1e9738dcf5ecb4805d473a305125c3d2";
//
//  Future <GameResponse> getGames(int platformId) async{
//    var response = await http.post(gameListUrl,
//        headers: {"Accept": "application/json", "user-key": "$apiKey"},
//        body: "fields artworks,bundles,category,checksum,collection,cover.*,created_at,first_release_date,follows,game_engines.*,game_modes.*,release_dates, genres.*,hypes,keywords.*,multiplayer_modes,name,parent_game,platforms.*, platforms.platform_logo.*, player_perspectives.*,popularity,rating,rating_count,screenshots.*,slug,standalone_expansions,status,storyline,summary,tags,time_to_beat,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos.*;where cover.image_id != null & genres != null & videos != null & created_at > 1252214987 & platforms = $platformId & rating > 80; limit 100; sort popularity desc;");
//    print("${response.statusCode}");
//    return GameResponse.fromJson(jsonDecode(response.body));
//  }
//
//  Future <GameResponse> getSlider(int platformId) async{
//    var response = await http.post(gameListUrl,
//        headers: {"Accept": "application/json,", "user-key": "$apiKey"},
//        body: "fields artworks,bundles,category,checksum,collection,cover.*,created_at,first_release_date,follows,game_engines.*,game_modes.*,release_dates, genres.*,hypes,keywords.*,multiplayer_modes,name,parent_game,platforms.*, platforms.platform_logo.*, player_perspectives.*,popularity,rating,rating_count,screenshots.*,slug,standalone_expansions,status,storyline,summary,tags,time_to_beat,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos.*;where cover.image_id != null & screenshots != null & created_at > 1252214987 & platforms = $platformId; limit 100; sort created_at asc;" );
//    print('${response.statusCode}');
//    return GameResponse.fromJson(json.decode(response.body));
//
//  }
//
//
//}





