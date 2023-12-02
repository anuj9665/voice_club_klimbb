import 'package:flutter/material.dart';
import 'package:voice_club/home/model/song.dart';
import 'package:voice_club/home/view/playlist_screen.dart';

import '../../utils/theme/pallet.dart';
import '../widgets/custom_app_bar.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({super.key, required this.song});
  final SongData song;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Pallet.backgroundGradient1,
          Pallet.backgroundGradient2,
          Pallet.backgroundGradient1,
        ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            const CustomAppBar(),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: size.width * 0.9,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(song.image), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      song.title,
                      style: textTheme.titleLarge,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      song.subtitle,
                      style: textTheme.bodyMedium?.copyWith(
                          color: Pallet.lightGreyTextColor,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Icon(Icons.favorite_border),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const LinearProgressIndicator(
              value: 0.5,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1:24",
                  style: textTheme.bodySmall,
                ),
                Text(
                  "3:58",
                  style: textTheme.bodySmall,
                ),
              ],
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.shuffle,
                  size: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.skip_previous,
                      size: 35,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    PlayBtn(),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.skip_next,
                      size: 35,
                    ),
                  ],
                ),
                Icon(
                  Icons.replay,
                  size: 30,
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
