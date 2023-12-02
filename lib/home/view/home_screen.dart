import 'package:flutter/material.dart';
import 'package:voice_club/home/data/home_data.dart';
import 'package:voice_club/home/view/playlist_screen.dart';
import 'package:voice_club/utils/theme/pallet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const id = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Pallet.backgroundGradient1,
          Pallet.backgroundGradient2,
          Pallet.backgroundGradient1,
        ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _HeaderSection(),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: DefaultTabController(
                  length: 5,
                  child: TabBar(
                    indicatorColor: Pallet.buttonGradient1,
                    isScrollable: true,
                    tabs: const [
                      Tab(
                        child: Text("Recent"),
                      ),
                      Tab(
                        child: Text("Top 50"),
                      ),
                      Tab(
                        child: Text("Chill"),
                      ),
                      Tab(
                        child: Text("R&B"),
                      ),
                      Tab(
                        child: Text("Festival"),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      HomeData.playlistList.length,
                      (index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PlayListScreen(
                                            playList:
                                                HomeData.playlistList[index],
                                          )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 200,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            HomeData.playlistList[index].image,
                                          ),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Text(
                                    HomeData.playlistList[index].title,
                                    style: textTheme.titleMedium
                                        ?.copyWith(fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    HomeData.playlistList[index].subtitle,
                                    style: textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: Pallet.lightGreyTextColor),
                                  )
                                ],
                              ),
                            ),
                          )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Text(
                      "Your favourites",
                      style: textTheme.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ...List.generate(
                      HomeData.fvrtSongs.length,
                      (index) => ListTile(
                            leading:
                                Image.asset(HomeData.fvrtSongs[index].image),
                            title: Text(HomeData.fvrtSongs[index].title),
                            subtitle: Text(HomeData.fvrtSongs[index].subtitle),
                            trailing: Text(HomeData.fvrtSongs[index].duration),
                          ))
                ],
              ),
              const SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 64,
          ),
          Text(
            "Welcome Back!",
            style: textTheme.titleLarge
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            "What do you feel like today?",
            style: textTheme.bodyMedium
                ?.copyWith(color: Pallet.lightGreyTextColor, fontSize: 14),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
                color: Pallet.darkGrey, borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Pallet.lightGreyTextColor,
                ),
                const SizedBox(
                  width: 2,
                ),
                Flexible(
                    child: Text(
                  "Search song, playlist, artist ...",
                  style: textTheme.bodyMedium
                      ?.copyWith(color: Pallet.lightGreyTextColor),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
