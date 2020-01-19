library finite_coverflow;

import 'dart:math';

import 'package:flutter/material.dart';

/// It is fancy crousel/slider
class FinitePager extends StatefulWidget {
  final double viewportFraction;
  final double scaleX;
  final double scaleY;
  final double rotationX;
  final double rotationY;
  final double opacity;
  final List<Widget> children;
  final ValueChanged<int> onPageChanged;
  final bool pageSnapping;

  /// Make to crousel reverse
  final bool reverse;

  /// Scroll physics for speed of the slider/crousel by your own [ScrollPhysics]
  /// or you can use predefined [ScrollPhysics] like [ClampingScrollPhysics], [BouncingScrollPhysics]
  final ScrollPhysics physics;

  /// It is flutter [Axis] have [Axis.vertical] and [Axis.horizontal]
  final Axis scrollDirection;

  /// Pager has two types
  /// [PagerType.simple] make simple crousel
  /// [PagerType.stack] make stacking crousel
  final PagerType pagerType;

  /// Over scroll only implement for [PagerType.stack]
  ///
  /// It is used when you want to scroll the last item
  /// For negative value it will scroll into the opposite direction
  /// For positive value it will scroll into them same direction
  /// If you not want to scroll then leave it zero
  final double overscroll;

  FinitePager({
    @required this.children,
    this.physics = const BouncingScrollPhysics(),
    this.onPageChanged,
    this.pageSnapping = true,
    this.viewportFraction = 0.75,
    this.scaleX = 1,
    this.scaleY = 1,
    this.opacity = 1,
    this.rotationX = 0,
    this.rotationY = 0,
    this.scrollDirection = Axis.horizontal,
    this.pagerType = PagerType.simple,
    this.reverse = false,
    this.overscroll = 0,
    Key key,
  })  : assert(scaleX <= 1 && scaleX >= 0),
        super(key: key);

  factory FinitePager.Symmetric({
    @required List<Widget> children,
    ValueChanged<int> onPageChanged,
    ScrollPhysics physics = const BouncingScrollPhysics(),
    bool pageSnapping = true,
    double viewportFraction = 0.75,
    double scale = 0.75,
    double opacity = 1,
    double rotation = 0,
    Axis direction = Axis.horizontal,
    PagerType pagerType = PagerType.simple,
    bool reverse = false,
    double overscroll = 0,
    Key key,
  }) {
    return FinitePager(
      children: children,
      pageSnapping: pageSnapping,
      physics: physics,
      viewportFraction: viewportFraction,
      onPageChanged: onPageChanged,
      opacity: opacity,
      scaleX: scale,
      scaleY: scale,
      rotationX: rotation,
      rotationY: rotation,
      scrollDirection: direction,
      pagerType: pagerType,
      reverse: reverse,
      overscroll: overscroll,
      key: key,
    );
  }

  @override
  _FinitePagerState createState() => _FinitePagerState();
}

enum PagerType { simple, stack }

class _FinitePagerState extends State<FinitePager> {
  var _pageController;
  double currentPageValue = 0;
  Size screenSize;
  Size pagerSize;
  GlobalKey _pagerKey;

  @override
  void initState() {
    super.initState();
    if (widget.pagerType == PagerType.stack) {
      _pageController = PageController(viewportFraction: 1);
    } else {
      _pageController =
          PageController(viewportFraction: widget.viewportFraction);
    }
    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    screenSize = MediaQuery.of(context).size;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (pagerSize == null) {
            pagerSize = constraints.biggest;
          }
          return PageView.builder(
            key: _pagerKey,
            itemCount: widget.children.length,
            pageSnapping: widget.pageSnapping,
            onPageChanged: widget.onPageChanged,
            physics: widget.physics,
            controller: _pageController,
            scrollDirection: widget.scrollDirection,
            reverse: widget.reverse,
            itemBuilder: (context, index) {
              var position = index - currentPageValue;
              var scaleXValue = max(
                  1 - ((position * (1 - widget.scaleX)).abs()), widget.scaleX);
              var scaleYValue = max(
                  1 - ((position * (1 - widget.scaleY)).abs()), widget.scaleY);
              var rotationXValue = (pi / 180) *
                  min(((position * (widget.rotationX)).abs()),
                      widget.rotationX);
              var rotationYValue = (pi / 180) *
                  min(((position * (widget.rotationY)).abs()),
                      widget.rotationY);
              var opacityValue = max(
                  1 - ((position * (1 - widget.opacity)).abs()),
                  widget.opacity);
              if (widget.pagerType == PagerType.simple) {
                if (position == 0) {
                  return widget.children[index];
                } else {
                  return Opacity(
                    opacity: opacityValue,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..scale(scaleXValue, scaleYValue)
                        ..rotateY(rotationYValue)
                        ..rotateX(rotationXValue),
                      alignment: Alignment(0, 0),
                      child: widget.children[index],
                    ),
                  );
                }
              } else if (PagerType.stack == widget.pagerType) {
                if (index == currentPageValue.floor()) {
                  var opacityValue = max(
                      1 - ((position * (1 - widget.opacity)).abs()),
                      widget.opacity);
                  var scaleXValue = (widget.scaleX +
                      (1 - widget.scaleX) * (1 - (position.abs())));
                  var scaleYValue = (widget.scaleY +
                      (1 - widget.scaleY) * (1 - (position.abs())));
                  var transitionX = widget.scrollDirection == Axis.horizontal
                      ? widget.reverse
                          ? (index - currentPageValue) *
                              (pagerSize.width + widget.overscroll)
                          : (currentPageValue - index) *
                              (pagerSize.width + widget.overscroll)
                      : 0;
                  var transitionY = widget.scrollDirection == Axis.vertical
                      ? widget.reverse
                          ? (index - currentPageValue) *
                              (pagerSize.height + widget.overscroll)
                          : (currentPageValue - index) *
                              (pagerSize.height + widget.overscroll)
                      : 0;
                  return Opacity(
                    opacity: opacityValue,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..scale(scaleXValue, scaleYValue)
                        ..rotateY(rotationYValue)
                        ..rotateX(rotationXValue)
                        ..translate(transitionX, transitionY),
                      alignment: Alignment(0, 0),
                      child: widget.children[index],
                    ),
                  );
                } else if (index == currentPageValue.floor() + 1) {
                  return Transform(
                    transform: Matrix4.identity()..translate(0, 0),
                    alignment: Alignment(0, 1),
                    child: widget.children[index],
                  );
                } else {
                  return widget.children[index];
                }
              } else {
                return throw Exception(
                    "pagertype is wrong you set, please set PagerType.simple or PagerType.stack");
              }
            },
          );
        },
      ),
    );
  }
}
