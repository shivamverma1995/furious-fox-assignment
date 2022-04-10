import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class VideoDialog extends StatelessWidget {
  String src;
  VideoDialog({required this.src, Key? key}) : super(key: key);
  YoutubePlayerController controller = YoutubePlayerController(
    initialVideoId: 'K18cpp_-gP8',
  );
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: YoutubePlayerIFrame(
        controller: controller,
        aspectRatio: 16 / 9,
      ),
    );
  }
}
