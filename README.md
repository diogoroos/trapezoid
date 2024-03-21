# trapezoid

[![pub package](https://img.shields.io/pub/v/fl_numeric_keyboard.svg?style=for-the-badge&color=blue)](https://pub.dartlang.org/packages/trapezoid)

Easily display a numeric keypad like those found on P.O.S (P.D.V in Brazil) equipment. Works on Android, iOS, Web, Windows, Linux and Mac.<br/>
Cloned and improved from the numeric_keyboard package.

## Installation

Add `trapezoid: ^2.0.0` in your `pubspec.yaml` dependencies. And import it:

```dart
import 'package:trapezoid/trapezoid.dart';
```

## How to use

Simply create a `FlutterKeyboard` widget and pass the required params:

```dart
FlutterKeyboard(
  onKeyboardTap: _onKeyboardTap
)

_onKeyboardTap(String value) {
  setState(() {
    text = text + value;
  });
}
```

## Params

```dart
FlutterKeyboard(
  onKeyboardTap: _onKeyboardTap,
  characters: const ['1', '2', '3', 'A', 'B', 'C', '!', '@', '#'],
  footerMiddleCharacter: '💡',
  itemsPerRow: 3,
  getAllSpace: true,
  externalPaddingButtons: const EdgeInsets.all(12),
  buttonsDecoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Colors.blue,
  ),
  footerRightAction: () {
    setState(() {
      textCtrl.text = textCtrl.text.substring(0, textCtrl.text.length - 1);
    });
  },
  footerRightChild: Container(
    alignment: Alignment.center,
    width: 50,
    height: 50,
    child: const Icon(Icons.backspace),
  ),
),
)
```

For a more detail example please take a look at the `example` folder.

## Example

Flutter keyboard:

<table>
  <tr>
    <td> <img src="https://github.com/diogoroos/trapezoid/assets/78812662/6a94f092-b627-42c4-8613-9d0d2f7145d9"></td>
    <td><img src="https://github.com/diogoroos/trapezoid/assets/78812662/5796099e-3c51-41e7-9766-fd1b6bb6d0ca"></td>
   </tr> 
   <tr>
      <td><img src="https://github.com/diogoroos/trapezoid/assets/78812662/05a6162a-a763-4b0a-b068-a4125f6fe87a"></td>
      <td><img src="https://github.com/diogoroos/trapezoid/assets/78812662/2f1551ae-b175-4044-a81d-d5e60cbaf58e"></td>
  </tr>
</table>

## -

If something is missing, feel free to open a ticket or contribute!
