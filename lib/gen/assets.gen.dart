/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBackgroundGen {
  const $AssetsBackgroundGen();

  /// File path: assets/background/about-bg.png
  AssetGenImage get aboutBg =>
      const AssetGenImage('assets/background/about-bg.png');

  /// File path: assets/background/falscreen.png
  AssetGenImage get falscreen =>
      const AssetGenImage('assets/background/falscreen.png');

  /// File path: assets/background/hafez.mp3
  String get hafez => 'assets/background/hafez.mp3';

  /// File path: assets/background/mainscreen.png
  AssetGenImage get mainscreen =>
      const AssetGenImage('assets/background/mainscreen.png');

  /// File path: assets/background/splash.png
  AssetGenImage get splash =>
      const AssetGenImage('assets/background/splash.png');

  /// List of all assets
  List<dynamic> get values => [aboutBg, falscreen, hafez, mainscreen, splash];
}

class Assets {
  Assets._();

  static const AssetGenImage appicon = AssetGenImage('assets/appicon.png');
  static const AssetGenImage applogo = AssetGenImage('assets/applogo.png');
  static const $AssetsBackgroundGen background = $AssetsBackgroundGen();
  static const String github = 'assets/github.svg';
  static const String instagram = 'assets/instagram.svg';
  static const String linkedin = 'assets/linkedin.svg';
  static const AssetGenImage logotext = AssetGenImage('assets/logotext.png');
  static const String twitter = 'assets/twitter.svg';
  static const AssetGenImage wifi = AssetGenImage('assets/wifi.png');

  /// List of all assets
  List<dynamic> get values =>
      [appicon, applogo, github, instagram, linkedin, logotext, twitter, wifi];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
