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

typedef KeyboardTapCallback = void Function(String text);

class FlutterKeyboard extends StatefulWidget {
  /// List of characters that will be displayed on the keyboard body.
  /// [default = '1', '2', '3', '4', '5', '6', '7', '8', '9']
  final List<String> characters;

  /// Character that is located in the footer between the left and
  /// right buttons. [default = '0']
  final String footerMiddleCharacter;

  /// Widget located to the right after [footerMiddleCharacter]
  final Widget? footerRightChild;

  /// Action to trigger when right button is pressed.
  final Function()? footerRightAction;

  /// widget located to the left before [footerMiddleCharacter]
  final Widget? footerLeftChild;

  /// Action to trigger when left button is pressed.
  final Function()? footerLeftAction;

  /// Callback when an item is pressed
  final KeyboardTapCallback onKeyboardTap;

  /// Main axis alignment [default = MainAxisAlignment.spaceEvenly]
  final MainAxisAlignment mainAxisAlignment;

  /// If true the buttons will be wrapped in Expanded widget,
  /// so they will take all the space possible and
  /// mainAxisAlignment will not be effective
  /// getAllSpace [default = true]
  final bool getAllSpace;

  /// Decorate of buttons.
  final Decoration? buttonsDecoration;

  /// External padding of buttons.
  /// [default = EdgeInsets.symmetric(horizontal: 4, vertical: 7)]
  final EdgeInsets externalPaddingButtons;

  /// Internal padding of buttons.
  /// [default = EdgeInsets.symmetric(horizontal: 40, vertical: 7)]
  final EdgeInsets internalPaddingButtons;

  /// TextStyle for numbers.
  /// [default = fontSize: 25, fontFamily: 'Arial',
  /// fontWeight: FontWeight.w400, color: Colors.black]
  final TextStyle numbersTextStyle;

  /// Number of buttons per line in the keyboard body.
  /// If a button is isolated, it will be filled with full padding in one row.
  /// [default = 3]
  final int itemsPerRow;

  const FlutterKeyboard({
    super.key,
    required this.onKeyboardTap,
    this.footerRightAction,
    this.footerRightChild,
    this.footerLeftAction,
    this.footerLeftChild,
    this.mainAxisAlignment = MainAxisAlignment.spaceEvenly,
    this.getAllSpace = true,
    this.buttonsDecoration,
    this.externalPaddingButtons = const EdgeInsets.symmetric(horizontal: 4, vertical: 7),
    this.internalPaddingButtons = const EdgeInsets.symmetric(horizontal: 40, vertical: 7),
    this.characters = const <String>['1', '2', '3', '4', '5', '6', '7', '8', '9'],
    this.numbersTextStyle = const TextStyle(
      fontSize: 25,
      fontFamily: 'Arial',
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    this.itemsPerRow = 3,
    this.footerMiddleCharacter = '0',
  });

  @override
  State<StatefulWidget> createState() {
    return _FlutterKeyboardState();
  }
}

class _FlutterKeyboardState extends State<FlutterKeyboard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        ...createVerticalList(widget.characters),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: widget.mainAxisAlignment,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: _buttonBottom(
                  InkWell(
                    onTap: widget.footerLeftAction,
                    child: widget.footerLeftChild,
                  ),
                ),
              ),
              Expanded(flex: 1, child: _calcButton(widget.footerMiddleCharacter)),
              Expanded(
                flex: 1,
                child: _buttonBottom(
                  InkWell(
                    onTap: widget.footerRightAction,
                    child: widget.footerRightChild,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _calcButton(String value) {
    return widget.getAllSpace ? Expanded(child: _calcButtonInside(value)) : _calcButtonInside(value);
  }

  Widget _buttonBottom(Widget insideButton) {
    return widget.getAllSpace ? Expanded(child: insideButton) : insideButton;
  }

  Widget _calcButtonInside(String value) {
    return InkWell(
      onTap: () {
        widget.onKeyboardTap(value);
      },
      child: Padding(
        padding: widget.externalPaddingButtons,
        child: Container(
          decoration: widget.buttonsDecoration,
          alignment: Alignment.center,
          padding: widget.internalPaddingButtons,
          child: Text(
            value,
            style: widget.numbersTextStyle,
          ),
        ),
      ),
    );
  }

  List<Widget> createVerticalList(List<String> characters) {
    final List<Widget> allItems = [];
    final List organizedItems = [];
    int itemsPerRow = widget.itemsPerRow - 1;

    for (var x = 0; x < characters.length; x++) {
      organizedItems.add(characters[x]);
      if (x == itemsPerRow) {
        organizedItems.add('stepOver');
        itemsPerRow += widget.itemsPerRow;
      }
    }

    List<Widget> row = [];
    for (var i = 0; i < organizedItems.length;) {
      row = [];
      for (var z = i; z < organizedItems.length; z++) {
        i++;
        if (organizedItems[z] == "stepOver") {
          break;
        }
        row.add(
          widget.getAllSpace
              ? Expanded(flex: 1, child: _calcButton(organizedItems[z]))
              : _calcButton(organizedItems[z]),
        );
      }

      allItems.add(Row(children: row));
    }

    return allItems;
  }
}
