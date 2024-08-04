import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/presentation/home_page/widgets/new_songs_widget.dart';
import 'package:spotify_clone/presentation/home_page/widgets/tab_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.search),
          title: SvgPicture.asset(height: 40, AppVectors.logo),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _topCard(),
              const SizedBox(height: 20),
              _taps(),
              SizedBox(
                height: 300,
                child: TabBarView(controller: tabController, children: [
                  const Tab(child: NewSongsWidget()),
                  Tab(child: Container()),
                  Tab(child: Container()),
                  Tab(child: Container()),
                ]),
              )
            ],
          ),
        ));
  }

  _topCard() {
    return Stack(
      children: [
        Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SvgPicture.asset(
                  fit: BoxFit.fitWidth, AppVectors.homeTopCard),
            )),
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(AppImages.homeArtist),
        )
      ],
    );
  }

  _taps() {
    return SizedBox(
      height: 50,
      child: TabBar(
        controller: tabController,
        isScrollable: true,
        tabs: [
          TabWidget(title: "New"),
          TabWidget(title: "Video"),
          TabWidget(title: "Artist"),
          TabWidget(title: "Popular")
        ],
      ),
    );
  }
}
