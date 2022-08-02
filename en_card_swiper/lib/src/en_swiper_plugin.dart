import 'package:flutter/widgets.dart';
import '../en_card_swiper.dart';

/// plugin to display swiper components
///
abstract class ENSwiperPlugin {
  const ENSwiperPlugin();

  Widget build(BuildContext context, ENSwiperPluginConfig config);
}

class ENSwiperPluginConfig {
  final Axis scrollDirection;
  final AxisDirection? axisDirection;
  final ENSwiperController controller;
  final int activeIndex;
  final int itemCount;
  final PageIndicatorLayout? indicatorLayout;
  final bool loop;
  final bool? outer;
  final PageController? pageController;
  final SwiperLayout? layout;

  const ENSwiperPluginConfig({
    required this.scrollDirection,
    required this.controller,
    required this.activeIndex,
    required this.itemCount,
    this.axisDirection,
    this.indicatorLayout,
    this.outer,
    this.pageController,
    this.layout,
    this.loop = false,
  });
}

class SwiperPluginView extends StatelessWidget {
  final ENSwiperPlugin plugin;
  final ENSwiperPluginConfig config;

  const SwiperPluginView({
    Key? key,
    required this.plugin,
    required this.config,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return plugin.build(context, config);
  }
}
