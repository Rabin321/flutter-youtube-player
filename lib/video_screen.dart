import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videoscreen extends StatefulWidget {
  final String id;
  Videoscreen({required this.id});
  @override
  _VideoscreenState createState() => _VideoscreenState();
}

class _VideoscreenState extends State<Videoscreen> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: widget.id,
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        onReady: () {
          print("Player is ready");
        },
      ),
    );
  }
}
