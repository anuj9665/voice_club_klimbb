import 'package:flutter/material.dart';
import 'package:voice_club/home/model/playlist.dart';
import 'package:voice_club/home/view/play_screen.dart';

import '../../utils/theme/pallet.dart';
import '../widgets/custom_app_bar.dart';

class PlayListScreen extends StatefulWidget {
  const PlayListScreen({super.key, required this.playList});
  final PlayListData playList;

  @override
  State<PlayListScreen> createState() => _PlayListScreenState();
}

class _PlayListScreenState extends State<PlayListScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Pallet.backgroundGradient1,
            Pallet.backgroundGradient2,
            Pallet.backgroundGradient1,
          ], begin: Alignment.topCenter, end: Alignment.bottomRight),
        ),
        child: Column(
          children: [
            Container(
              height: size.height * 0.4,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.playList.image),
                    fit: BoxFit.cover),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomAppBar(),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.playList.title,
                              style: textTheme.titleLarge?.copyWith(),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              widget.playList.subtitle,
                              style: textTheme.bodyLarge
                                  ?.copyWith(color: Pallet.lightGreyTextColor),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(
                              width: 10,
                            ),
                            PlayBtn(),
                          ],
                        )
                      ],
                    ),
                    const Spacer()
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: widget.playList.songsList.length,
                  itemBuilder: (context, index) => ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlayScreen(
                                        song: widget.playList.songsList[index],
                                      )));
                        },
                        leading:
                            Image.asset(widget.playList.songsList[index].image),
                        title: Text(widget.playList.songsList[index].title),
                        subtitle:
                            Text(widget.playList.songsList[index].subtitle),
                        trailing:
                            Text(widget.playList.songsList[index].duration),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}

class PlayBtn extends StatelessWidget {
  const PlayBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage("assets/images/play_btn.png"),
        ),
      ),
    );
  }
}
