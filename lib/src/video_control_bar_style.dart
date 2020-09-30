import 'package:flutter/material.dart';
import './video_progress_style.dart';

const double iconSize = 18;
const double textSize = 12;

/// 底部控制拦样式
class VideoControlBarStyle {
  VideoControlBarStyle({
    this.height = 36,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
    VideoProgressStyle progressStyle, //进度条样式
    this.playedColor = const Color.fromRGBO(255, 0, 0, 0.7), //几个版本后移除
    this.bufferedColor = const Color.fromRGBO(50, 50, 200, 0.2), //几个版本后移除
    this.backgroundColor = const Color.fromRGBO(200, 200, 200, 0.5), //几个版本后移除
    this.barBackgroundColor = const Color.fromRGBO(0, 0, 0, 0.5),
    this.timePadding = const EdgeInsets.symmetric(horizontal: 4),
    this.timeFontSize = 11,
    this.timeFontColor = const Color.fromRGBO(255, 255, 255, 1),
    this.playIcon = const Icon(
      Icons.play_circle_outline,
      size: iconSize,
      color: Color(0xFFFFFFFF),
      semanticLabel: "播放",
    ),
    this.pauseIcon = const Icon(
      Icons.pause_circle_outline,
      size: iconSize,
      color: Color(0xFFFFFFFF),
      semanticLabel: "暂停",
    ),
    this.rewindIcon = const Icon(
      Icons.fast_rewind,
      size: iconSize,
      color: Color(0xFFFFFFFF),
      semanticLabel: "快退",
    ),
    this.forwardIcon = const Icon(
      Icons.fast_forward,
      size: iconSize,
      color: Color(0xFFFFFFFF),
      semanticLabel: "快进",
    ),
    this.fullscreenIcon = const Icon(
      Icons.fullscreen,
      size: iconSize,
      color: Color(0xFFFFFFFF),
      semanticLabel: "全屏",
    ),
    this.fullscreenExitIcon = const Icon(
      Icons.fullscreen_exit,
      size: iconSize,
      color: Color(0xFFFFFFFF),
      semanticLabel: "退出全屏",
    ),
    this.nextIcon = const Icon(
      Icons.skip_next,
      size: iconSize,
      color: Color(0xFFFFFFFF),
      semanticLabel: "下一个",
    ),
    this.speedText = const Text(
      "倍速",
      style: TextStyle(
        fontSize: textSize,
        color: Color(0xFFFFFFFF),
      ),
    ),
    this.definitionText = const Text(
      "原画",
      style: TextStyle(
        fontSize: textSize,
        color: Color(0xFFFFFFFF),
      ),
    ),
    this.itemList = const [
      "rewind",
      "play",
      "forward",
      "progress",
      "time",
      "fullscreen",
      "next",
      "speed",
      "definition"
    ],
  }) : progressStyle = progressStyle ?? VideoProgressStyle();

  final double height;
  final EdgeInsets padding;
  EdgeInsets margin;
  final VideoProgressStyle progressStyle;
  final Color playedColor;
  final Color bufferedColor;
  final Color backgroundColor;
  final Color barBackgroundColor;
  final EdgeInsets timePadding;
  final double timeFontSize;

  // final double iconSize;
  final Color timeFontColor;
  final Widget playIcon;
  final Widget pauseIcon;
  final Widget rewindIcon;
  final Widget forwardIcon;
  final Widget fullscreenIcon;
  final Widget fullscreenExitIcon;
  final Widget nextIcon;
  final Widget speedText;
  final Widget definitionText;
  final List<String> itemList;
}
