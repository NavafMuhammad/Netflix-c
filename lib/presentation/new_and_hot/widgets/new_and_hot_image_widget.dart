import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/mute_button.dart';

class NewandHotImageWidget extends StatelessWidget {
  const NewandHotImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      SizedBox(
        width: double.infinity,
        height: 200,
        child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://image.tmdb.org/t/p/original/koY8N9Y8IcLlb2eJXz50X1hFUL5.jpg')),
      ),
      Positioned(
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
