import 'package:flutter/widgets.dart';
import 'package:heytea_kit/widget/flutter_page_indicator/flutter_page_indicator.dart';
import 'package:heytea_kit/widget/flutter_swiper/flutter_swiper.dart';

/// plugin to display swiper components
///
abstract class SwiperPlugin {
  const SwiperPlugin();

  Widget build(BuildContext context, SwiperPluginConfig config);
}

class SwiperPluginConfig {
  final int activeIndex;
  final int itemCount;
  final PageIndicatorLayout indicatorLayout;
  final Axis scrollDirection;
  final bool loop;
  final bool outer;
  final PageController pageController;
  final SwiperController controller;
  final SwiperLayout layout;

  const SwiperPluginConfig(
      {required this.activeIndex,
        required this.itemCount,
        required this.indicatorLayout,
        required this.outer,
        required this.scrollDirection,
        required this.controller,
        required this.pageController,
        required this.layout,
        required this.loop})
      : assert(scrollDirection != null),
        assert(controller != null);
}

class SwiperPluginView extends StatelessWidget {
  final SwiperPlugin plugin;
  final SwiperPluginConfig config;

  const SwiperPluginView(this.plugin, this.config);

  @override
  Widget build(BuildContext context) {
    return plugin.build(context, config);
  }
}
