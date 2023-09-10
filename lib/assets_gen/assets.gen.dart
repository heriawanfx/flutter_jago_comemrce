/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/background.jpg
  AssetGenImage get background =>
      const AssetGenImage('assets/images/background.jpg');

  /// File path: assets/images/cart_arrow_down.png
  AssetGenImage get cartArrowDown =>
      const AssetGenImage('assets/images/cart_arrow_down.png');

  /// File path: assets/images/cwb_logo.png
  AssetGenImage get cwbLogo =>
      const AssetGenImage('assets/images/cwb_logo.png');

  /// File path: assets/images/cwb_splash.png
  AssetGenImage get cwbSplash =>
      const AssetGenImage('assets/images/cwb_splash.png');

  /// File path: assets/images/delete.png
  AssetGenImage get delete => const AssetGenImage('assets/images/delete.png');

  /// File path: assets/images/filter.png
  AssetGenImage get filter => const AssetGenImage('assets/images/filter.png');

  /// File path: assets/images/flash_deal.png
  AssetGenImage get flashDeal =>
      const AssetGenImage('assets/images/flash_deal.png');

  /// File path: assets/images/home.png
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');

  /// File path: assets/images/inbox.png
  AssetGenImage get inbox => const AssetGenImage('assets/images/inbox.png');

  /// File path: assets/images/more.png
  AssetGenImage get more => const AssetGenImage('assets/images/more.png');

  /// File path: assets/images/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/images/notification.png');

  /// File path: assets/images/order.png
  AssetGenImage get order => const AssetGenImage('assets/images/order.png');

  /// File path: assets/images/placeholder_1x1.png
  AssetGenImage get placeholder1x1 =>
      const AssetGenImage('assets/images/placeholder_1x1.png');

  /// File path: assets/images/toolbar_background.jpg
  AssetGenImage get toolbarBackground =>
      const AssetGenImage('assets/images/toolbar_background.jpg');

  /// File path: assets/images/wishlist.png
  AssetGenImage get wishlist =>
      const AssetGenImage('assets/images/wishlist.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        background,
        cartArrowDown,
        cwbLogo,
        cwbSplash,
        delete,
        filter,
        flashDeal,
        home,
        inbox,
        more,
        notification,
        order,
        placeholder1x1,
        toolbarBackground,
        wishlist
      ];
}

class MyAssets {
  MyAssets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
