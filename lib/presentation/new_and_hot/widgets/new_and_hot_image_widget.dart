import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/mute_button.dart';

class NewandHotImageWidget extends StatelessWidget {
  final String imageUrl;
  const NewandHotImageWidget({
    required this.imageUrl,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        height: 200,
        child: Image(fit: BoxFit.cover, image: NetworkImage(imageUrl)),
      ),
      const Positioned(
        bottom: 10,
        right: 10,
        child: MuteButton(
          radius: 20,
          iconSize: 20,
        ),
      )
    ]);
  }
}
