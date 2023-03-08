import 'package:flutter/material.dart';
import 'package:tok_tok_app/presentation/widgets/shared/video_buttons.dart';

import '../../../domain/entities/video_post.dart';
import '../video/fullscreen_player.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost>  videos;
  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (BuildContext context, int index) { 
        final VideoPost videoPost=  videos[index];
        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(caption: videoPost.caption,videoUrl: videoPost.videoUrl),
            ),
            
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: videoPost))

          ],
        );
       },
     
    );
  }
}