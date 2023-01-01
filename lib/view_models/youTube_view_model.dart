import 'package:flutter/material.dart';

import '../data/Services/api_status.dart';
import '../data/Services/youTube_services.dart';
import '../data/models/youTube_video_model.dart';

class YouTubeViewModel extends ChangeNotifier {
  final String _playListId = "PLkw_FlxjTTqd1QpoMmI9mfJ0hP50tCMUx";
  String _nextPageToken = "";

  // create loading variable
  bool _loading = false;

  //create video list
  List<YTVideoModel> _yTVideos = [];

  YouTubeViewModel() {
    // getVideos();
  }

  //loading status getter
  bool get loading => _loading;

  //video list getter
  List<YTVideoModel> get yTVideos => _yTVideos;

  //loading status setter
  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  //video list setter
  setYTVideo(List ytVideos) {
    _yTVideos = ytVideos.cast<YTVideoModel>();
  }

  Future getVideos() async {
    setLoading(true);

    var res =
        await YoutubeServices.getYouTubeVideos(_playListId, _nextPageToken);
    print("doing something");
    if (res is Success) {
      YTVideoModel data = videoModelFromJson(res.response.toString());
      _yTVideos.addAll(data.items as List<YTVideoModel>);
      print("THIS IS YOUTUBE PAYLOAD ${data}");
      _nextPageToken = data.nextPageToken!;
    }
    print("done");
    setLoading(false);
  }
}
