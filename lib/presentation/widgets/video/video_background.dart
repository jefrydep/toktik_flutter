import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {

  final List<Color> colors;
  const VideoBackground({super.key, 
    this.colors= const [
       Colors.transparent,
        Colors.blue
    ]
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(child:  DecoratedBox(decoration: BoxDecoration(
      gradient: LinearGradient(colors: colors,
       //stops: const [0.5,1.0],
        stops: const [0.8,1.0],
      
      )

    )));
  }
}