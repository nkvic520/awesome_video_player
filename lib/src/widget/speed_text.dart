import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

typedef SpeedChangeHandle = void Function(double speed);

class SpeedText extends StatefulWidget {
  final VideoPlayerController controller;
  final SpeedChangeHandle onSpeedChange;

  SpeedText(this.controller, this.onSpeedChange);

  @override
  _SpeedTextState createState() => _SpeedTextState();
}

class _SpeedTextState extends State<SpeedText> {
  VoidCallback listener;

  VideoPlayerController get controller => widget.controller;

  _SpeedTextState() {
    listener = () {
      if (!mounted) {
        return;
      }
      setState(() {});
    };
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(listener);
  }

  @override
  void deactivate() {
    controller.removeListener(listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Text("${controller.value.playbackSpeed}X", style: TextStyle(
      fontSize: 12,
      color: Color(0xFFFFFFFF),
    ),);
  }
}