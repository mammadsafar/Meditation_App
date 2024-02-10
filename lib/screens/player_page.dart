import 'package:flutter/material.dart';

import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class MyVideoPlayerPage extends StatefulWidget {
  const MyVideoPlayerPage({super.key});

  @override
  State<MyVideoPlayerPage> createState() => _MyVideoPlayerPageState();
}

class _MyVideoPlayerPageState extends State<MyVideoPlayerPage> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    videoPlayerController =
        VideoPlayerController.asset('assets/videos/vid-1.mp4');

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      showControls: true,
      showControlsOnInitialize: false,
      aspectRatio: 0.5,
      optionsTranslation: OptionsTranslation(
        playbackSpeedButtonText: 'سرعت پخش',
        subtitlesButtonText: 'زیرنویس',
        cancelButtonText: 'لغو',
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chewieController != null
          ? SafeArea(
              child: Chewie(
                controller: chewieController!,
              ),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
