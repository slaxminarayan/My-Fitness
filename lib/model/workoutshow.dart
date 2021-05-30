import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WorkOutShow extends StatefulWidget {
  final String textMethod;
  final String videoPath;
  final String textUpper;
  final String textLower;

  WorkOutShow(
      {@required this.textMethod,
      @required this.videoPath,
      @required this.textUpper,
      @required this.textLower});

  @override
  _WorkOutShowState createState() => _WorkOutShowState(
        textMethod: textMethod,
        videoPath: videoPath,
        textUpper: textUpper,
        textLower: textLower,
      );
}

class _WorkOutShowState extends State<WorkOutShow> {
  final String textMethod;
  final String videoPath;
  final String textUpper;
  final String textLower;
  _WorkOutShowState(
      {@required this.textMethod,
      @required this.videoPath,
      @required this.textUpper,
      @required this.textLower});

  VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/' + videoPath);
    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Excercise'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  textMethod.toUpperCase(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
              Text(
                textUpper,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'PatrickHand',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _controller.value.initialized
                  ? Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5.0,
                        )
                      ]),
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    )
                  : Container(
                      child: Text('Waiting.....'),
                    ),
              SizedBox(
                height: 20,
              ),
              Text(
                'STEPS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Text(
                textLower,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'PatrickHand',
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
