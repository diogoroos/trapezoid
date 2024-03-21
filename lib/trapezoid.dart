library trapezoid;

/**
 * Autor: Diogo Roos de Melo
 * Data: 2024/03/20
 * https://github.com/diogoroos/trapezoid
 * 
 * Licensed under: Apache License 2.0. 
 * All licenses in this repository are copyrighted by their respective authors. 
 * See LICENSE for details.
 */

import 'package:flutter/material.dart';
import 'package:trapezoid/src/one_trapezio.dart';

typedef KeyboardTapCallback = void Function();

class Trapezoid extends StatefulWidget {
  /// Size of all trapezoid.
  /// [default = BoxConstraints(minHeight: 64, maxHeight: 284)]
  final BoxConstraints sizeTrapezoid;

  final BoxDecoration? firstDecoration;
  final BoxDecoration? secondDecoration;
  final BoxDecoration? thirdDecoration;
  final BoxDecoration? fourDecoration;

  final KeyboardTapCallback? firstButtonAction;
  final KeyboardTapCallback? secondButtonAction;
  final KeyboardTapCallback? thirdButtonAction;
  final KeyboardTapCallback? fourButtonAction;

  /// Height of all trapeze.
  /// [default 66]
  final double height;

  /// First icon.
  /// [default const Positioned(top: 7, right: 13, child: Icon(Icons.remove_red_eye))]
  final Positioned? firstIcon;

  /// Second icon.
  /// [default const Positioned(top: 7, right: 12, child: Icon(Icons.remove_red_eye))]
  final Positioned? secondIcon;

  /// Third icon.
  /// [default const Positioned(top: 7, right: 10, child: Icon(Icons.remove_red_eye))]
  final Positioned? thirdIcon;

  /// Four icon.
  /// [default const Positioned(top: 7, right: 10, child: Icon(Icons.remove_red_eye))]
  final Positioned? fourIcon;

  final Padding afterLastTrapeze;

  /// First trapeze.
  /// [default Size(372, 66)]
  final Size firstTrapeze;

  /// Second trapeze.
  /// [default Size(297, 66)]
  final Size secondTrapeze;

  /// Third trapeze.
  /// [default Size(238, 66)]
  final Size thirdTrapeze;

  /// Four trapeze.
  /// [default Size(190, 66)]
  final Size fourTrapeze;

  final Widget? childOneFirstTrapeze;
  final Widget? childOneSecondTrapeze;
  final Widget? childOneThirdTrapeze;

  final Widget? childTwoFirstTrapeze;
  final Widget? childTwoSecondTrapeze;
  final Widget? childTwoThirdTrapeze;

  final Widget? childThreeFirstTrapeze;
  final Widget? childThreeSecondTrapeze;
  final Widget? childThreeThirdTrapeze;

  final Widget? childFourFirstTrapeze;
  final Widget? childFourSecondTrapeze;
  final Widget? childFourThirdTrapeze;

  const Trapezoid({
    super.key,
    this.firstButtonAction,
    this.secondButtonAction,
    this.thirdButtonAction,
    this.fourButtonAction,
    this.sizeTrapezoid = const BoxConstraints(minHeight: 64, maxHeight: 284),
    this.firstDecoration,
    this.secondDecoration,
    this.thirdDecoration,
    this.fourDecoration,
    this.height = 66,
    this.childOneFirstTrapeze,
    this.childOneSecondTrapeze,
    this.childOneThirdTrapeze,
    this.childFourFirstTrapeze,
    this.childTwoFirstTrapeze,
    this.childTwoSecondTrapeze,
    this.childTwoThirdTrapeze,
    this.childFourSecondTrapeze,
    this.childThreeFirstTrapeze,
    this.childThreeSecondTrapeze,
    this.childThreeThirdTrapeze,
    this.childFourThirdTrapeze,
    this.firstTrapeze = const Size(372, 66),
    this.secondTrapeze = const Size(297, 66),
    this.thirdTrapeze = const Size(238, 66),
    this.fourTrapeze = const Size(190, 66),
    required this.afterLastTrapeze,
    this.firstIcon = const Positioned(
      top: 7,
      right: 13,
      child: Icon(Icons.remove_red_eye),
    ),
    this.secondIcon = const Positioned(
      top: 7,
      right: 12,
      child: Icon(Icons.remove_red_eye),
    ),
    this.thirdIcon = const Positioned(
      top: 7,
      right: 10,
      child: Icon(Icons.remove_red_eye),
    ),
    this.fourIcon = const Positioned(
      top: 7,
      right: 10,
      child: Icon(Icons.remove_red_eye),
    ),
  });

  @override
  State<StatefulWidget> createState() {
    return _TrapezoidState();
  }
}

class _TrapezoidState extends State<Trapezoid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: widget.sizeTrapezoid,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: widget.height,
            child: InkWell(
              onTap: widget.firstButtonAction,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2),
                    child: ClipPath(
                      clipper: OneTrapezio(),
                      child: Container(
                        width: widget.firstTrapeze.width,
                        height: widget.firstTrapeze.height,
                        decoration: widget.firstDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: widget.childOneFirstTrapeze ?? Container()),
                            Center(child: widget.childOneSecondTrapeze ?? Container()),
                            Center(child: widget.childOneThirdTrapeze ?? Container()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  widget.firstIcon ?? Container()
                ],
              ),
            ),
          ),
          SizedBox(
            height: widget.height,
            child: InkWell(
              onTap: widget.secondButtonAction,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: ClipPath(
                      clipper: OneTrapezio(),
                      child: Container(
                        width: widget.secondTrapeze.width,
                        height: widget.secondTrapeze.height,
                        decoration: widget.secondDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: widget.childTwoFirstTrapeze ?? Container()),
                            Center(child: widget.childTwoSecondTrapeze ?? Container()),
                            Center(child: widget.childTwoThirdTrapeze ?? Container()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  widget.secondIcon ?? Container()
                ],
              ),
            ),
          ),
          SizedBox(
            height: widget.height,
            child: InkWell(
              onTap: widget.thirdButtonAction,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: ClipPath(
                      clipper: OneTrapezio(),
                      child: Container(
                        width: widget.thirdTrapeze.width,
                        height: widget.thirdTrapeze.height,
                        decoration: widget.thirdDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: widget.childThreeFirstTrapeze ?? Container()),
                            Center(child: widget.childThreeSecondTrapeze ?? Container()),
                            Center(child: widget.childThreeThirdTrapeze ?? Container()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  widget.thirdIcon ?? Container()
                ],
              ),
            ),
          ),
          SizedBox(
            height: widget.height,
            child: InkWell(
              onTap: widget.fourButtonAction,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: ClipPath(
                      clipper: OneTrapezio(),
                      child: Container(
                        width: widget.fourTrapeze.width,
                        height: widget.fourTrapeze.height,
                        decoration: widget.fourDecoration,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: widget.childFourFirstTrapeze ?? Container()),
                            Center(child: widget.childFourSecondTrapeze ?? Container()),
                            Center(child: widget.childFourThirdTrapeze ?? Container()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  widget.fourIcon ?? Container()
                ],
              ),
            ),
          ),
          widget.afterLastTrapeze
        ],
      ),
    );
  }
}
