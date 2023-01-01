import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:stea/core/utils/constants.dart';

import 'api_status.dart';

class YoutubeServices {
  static Future<Object?> getYouTubeVideos(
      String playListId, String pageToken) async {
    Map<String, String> parameters = {
      "part": "snippet",
      "playlistId": playListId,
      "pageToken": pageToken,
      "key": Constants.youtubeApiKey,
    };

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: "application/json"
    };

    Uri uri = Uri.http(
        Constants.youtubeBaseUrl, "/youtube/v3/playlistItems", parameters);

    try {
      http.Response response = await http.get(uri, headers: headers);
      //YTVideoModel data = videoModelFromJson(response.body);
      print("THIS IS RESPONSE.BODY::::::: ${response.body}");
      if (response.statusCode == 200) {
        // return response.body;

        return Success(response: response.body);
      }
      return Failure(
          errorResponse:
              "Failed to Upload Testimony, check internet connection");
    } on HttpException {
      return Failure(
          code: Constants.noInternet, errorResponse: "No Internet Connection");
    } catch (e) {
      print(e.toString());
    }
  }
}
