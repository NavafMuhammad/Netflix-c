import 'package:flutter/material.dart';
import 'package:netflix/application/home/home_bloc.dart';
import 'package:netflix/core/colors.dart';
import 'package:netflix/core/strings.dart';
import 'package:netflix/presentation/widgets/text_icon_button_widget.dart';

class LandingBackgroundImageWidget extends StatelessWidget {
  const LandingBackgroundImageWidget({super.key, required this.state});

  final HomeState state;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      height: size.height * 0.78,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.78,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "$kImageAppendUrl${state.getTrendingMovies[5].posterPath}",
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const TextIconButtonWidget(
                  title: 'Wishlist',
                  icon: Icons.add,
                  textColor: kWhiteColor,
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6))),
                      backgroundColor: WidgetStateProperty.all(kWhiteColor)),
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: kBlackColor,
                    size: 35,
                  ),
                  label: const Text(
                    'Play',
                    style: TextStyle(
                        color: kBlackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                const TextIconButtonWidget(
                  title: 'info',
                  icon: Icons.info_outline,
                  textColor: kWhiteColor,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
