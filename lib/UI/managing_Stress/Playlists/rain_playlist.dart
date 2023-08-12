import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:cheerup/UI/managing_Stress/playlist_select.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../library.dart';

class rainMusicPlaylist extends StatefulWidget {
  @override
  _rainMusicPlaylistState createState() => _rainMusicPlaylistState();
}

class _rainMusicPlaylistState extends State<rainMusicPlaylist> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();
  double screenHeight = 0;
  double screenWidth = 0;
  final Color maincolor = Color(0xff181c27);
  final Color inactiveColor = Color(0xff5d6169);
  List<Audio> audioList = [
    Audio.network(
        'https://upload.wikimedia.org/wikipedia/commons/d/dc/Bourne_woods_rain_2020-05-10_0800.mp3',
        metas: Metas(
          title: 'Bourne Woods Rain',
          artist: 'Robert EA Harvey, CC BY-SA 4.0, via Wikimedia Commons',
        )),
    Audio.network(
        'https://upload.wikimedia.org/wikipedia/commons/4/4f/Falling_Rain_SFX_1_2016-11-19.oga',
        metas: Metas(
          title: 'Falling Rain',
          artist: 'valvalion, CC BY 3.0, via Wikimedia Commons',
        )),
    Audio.network(
        'https://upload.wikimedia.org/wikipedia/commons/c/cc/Regen_en_onweer_-_SoundCloud_-_Beeld_en_Geluid.ogg',
        metas: Metas(
          title: 'Rain and thunder',
          artist: 'Beeld en Geluid, CC BY-SA 3.0, via Wikimedia Commons',
        )),
  ];

  @override
  void initState() {
    super.initState();
    setupPlaylist();
  }

  void setupPlaylist() async {
    await audioPlayer.open(Playlist(audios: audioList),
        autoStart: false, loopMode: LoopMode.playlist);
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  Widget playlistImage() {
    return Container(
      height: screenHeight * 0.25,
      width: screenHeight * 0.25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'assets/images/rain.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget playlistTitle() {
    return Text(
      'Rain Playlist',
      style: TextStyle(
          color: Color(0xFF77381F), fontSize: 30, fontWeight: FontWeight.bold),
    );
  }

  Widget playlist(RealtimePlayingInfos realtimePlayingInfos) {
    return Container(
      height: screenHeight * 0.35,
      alignment: Alignment.bottomLeft,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return playlistItem(index);
        },
        itemCount: audioList.length,
      ),
    );
  }

  Widget playlistItem(int index) {
    return InkWell(
      onTap: () => audioPlayer.playlistPlayAtIndex(index),
      splashColor: Colors.transparent,
      highlightColor: Color(0xFF77381F),
      child: SingleChildScrollView(
        child: Container(
          child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Row(
                children: [
                  Text(
                    '0${index + 1}',
                    style: TextStyle(
                      color: Color(0xFF77381F),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.04,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(audioList[index].metas.title.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(
                          height: screenHeight * 0.005,
                        ),
                        Text(
                          audioList[index].metas.artist.toString(),
                          style: TextStyle(
                            fontSize: 10,
                            color: inactiveColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Icon(Icons.menu_rounded, color: inactiveColor),
                ],
              )),
        ),
      ),
    );
  }

  Widget playButton() {
    return Container(
      decoration: BoxDecoration(),
      width: screenWidth * 0.25,
      child: TextButton(
        onPressed: () => audioPlayer.playlistPlayAtIndex(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.play_circle_outline_rounded,
              color: Color(0xFF77381F),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Play',
              style: TextStyle(
                color: Color(0xFF77381F),
              ),
            ),
          ],
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Color(0xFFFBEBC1)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }

  Widget bottomPlayContainer(RealtimePlayingInfos realtimePlayingInfos) {
    return Container(
      height: screenHeight * 0.1,
      decoration: BoxDecoration(
        color: Color(0xFFD9D0C3),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Container(
              height: screenHeight * 0.08,
              width: screenWidth * 0.08,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    realtimePlayingInfos.current!.audio.audio.metas.title
                        .toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: screenHeight * 0.005,
                  ),
                  Text(
                      realtimePlayingInfos.current!.audio.audio.metas.artist
                          .toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
                ],
              ),
            ),
            Icon(Icons.favorite_outline_rounded, color: Color(0xFF77381F)),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            IconButton(
              icon: Icon(realtimePlayingInfos.isPlaying
                  ? Icons.pause_circle_filled_rounded
                  : Icons.play_circle_fill_rounded),
              iconSize: screenHeight * 0.07,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              color: Color(0xFF77381F),
              onPressed: () => audioPlayer.playOrPause(),
            ),
          ],
        ),
      ),
    );
  }

  Widget audioPlayerUI(RealtimePlayingInfos realtimePlayingInfos) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          realtimePlayingInfos.current!.audio.audio.metas.title.toString(),
          style: TextStyle(
              color: Color(0xFF77381F),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          realtimePlayingInfos.current!.audio.audio.metas.artist.toString(),
          style: TextStyle(color: Color(0xFF77381F), fontSize: 12),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            getTimeText(realtimePlayingInfos.currentPosition),
            linearProgressBar(realtimePlayingInfos.currentPosition,
                realtimePlayingInfos.duration),
            getTimeText(realtimePlayingInfos.duration),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => audioPlayer.previous(),
              icon: Icon(Icons.skip_previous_rounded),
              iconSize: 50,
              color: Color(0xFF77381F),
            ),
            IconButton(
              onPressed: () => audioPlayer.playOrPause(),
              icon: Icon(realtimePlayingInfos.isPlaying
                  ? Icons.pause_circle_filled_rounded
                  : Icons.play_circle_filled_rounded),
              iconSize: 50,
              color: Color(0xFF77381F),
            ),
            IconButton(
              onPressed: () => audioPlayer.next(),
              icon: Icon(Icons.skip_next_rounded),
              iconSize: 50,
              color: Color(0xFF77381F),
            ),
          ],
        )
      ],
    );
  }

  Widget linearProgressBar(Duration currentPosition, Duration duration) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: LinearPercentIndicator(
          width: 250,
          backgroundColor: Colors.grey,
          percent: currentPosition.inSeconds / duration.inSeconds,
          progressColor: Color(0xFF77381F)),
    );
  }

  Widget getTimeText(Duration seconds) {
    return Text(
      transformString(seconds.inSeconds),
      style: TextStyle(color: Color(0xFF77381F), fontWeight: FontWeight.bold),
    );
  }

  String transformString(int seconds) {
    String minuteString =
        '${(seconds / 60).floor() < 10 ? 0 : ''}${(seconds / 60).floor()}';
    String secondString = '${seconds % 60 < 10 ? 0 : ''}${seconds % 60}';
    return '$minuteString:$secondString';
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _appBar(context),
      backgroundColor: Color(0xFFFFF9F0),
      body: audioPlayer.builderRealtimePlayingInfos(
          builder: (context, realtimePlayingInfos) {
        if (realtimePlayingInfos != null) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                playlistImage(),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                playlistTitle(),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                playlist(realtimePlayingInfos),

                audioPlayerUI(realtimePlayingInfos)
                //bottomPlayContainer(realtimePlayingInfos)
              ],
            ),
          );
        } else {
          return Column();
        }
      }),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        '',
        style: TextStyle(
          color: Color(0xFF77381F),
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Get.to(() => playlist_select());

          dispose();
        },
        child: Icon(
          Icons.arrow_back,
          color: Color(0xFF77381F),
          size: 25,
        ),
      ),
    );
  }
}
