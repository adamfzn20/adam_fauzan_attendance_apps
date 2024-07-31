/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  /// Directory path: lib/resources
  $LibResourcesGen get resources => const $LibResourcesGen();
}

class $LibResourcesGen {
  const $LibResourcesGen();

  /// Directory path: lib/resources/images
  $LibResourcesImagesGen get images => const $LibResourcesImagesGen();
}

class $LibResourcesImagesGen {
  const $LibResourcesImagesGen();

  /// File path: lib/resources/images/image-empty.png
  AssetGenImage get imageEmpty =>
      const AssetGenImage('lib/resources/images/image-empty.png');

  /// File path: lib/resources/images/img_error.png
  AssetGenImage get imgError =>
      const AssetGenImage('lib/resources/images/img_error.png');

  /// File path: lib/resources/images/lottie_failed.json
  String get lottieFailed => 'lib/resources/images/lottie_failed.json';

  /// File path: lib/resources/images/lottie_success.json
  String get lottieSuccess => 'lib/resources/images/lottie_success.json';

  /// File path: lib/resources/images/lottie_warning.json
  String get lottieWarning => 'lib/resources/images/lottie_warning.json';

  /// File path: lib/resources/images/svg_empty.svg
  String get svgEmpty => 'lib/resources/images/svg_empty.svg';

  /// File path: lib/resources/images/svg_error_state.svg
  String get svgErrorState => 'lib/resources/images/svg_error_state.svg';

  /// List of all assets
  List<dynamic> get values => [
        imageEmpty,
        imgError,
        lottieFailed,
        lottieSuccess,
        lottieWarning,
        svgEmpty,
        svgErrorState
      ];
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
