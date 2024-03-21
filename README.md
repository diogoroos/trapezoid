# trapezoid

[![pub package](https://img.shields.io/pub/v/trapezoid.svg?style=for-the-badge&color=blue)](https://pub.dartlang.org/packages/trapezoid)

A customizable trapeze with texts, icons and divided into touchable parts. It's better than image because every part of the trapezoid is clickable. Works on Android, iOS, Web, Windows, Linux and Mac.<br/>
Cloned and improved from the trapezoid package.

## Installation

Add `trapezoid: ^1.0.0` in your `pubspec.yaml` dependencies. And import it:

```dart
import 'package:trapezoid/trapezoid.dart';
```

## How to use

Simply create a `Trapezoid` widget and pass the required params:

```dart
Trapezoid(
  afterLastTrapeze: Padding(
    padding: const EdgeInsets.only(left: 3),
    child: Container(
      width: 90,
      height: 20,
      decoration: const BoxDecoration(color: Color.fromRGBO(156, 17, 6, 1)),
    ),
  ),
)
```

## Params

```dart
Trapezoid(
  firstButtonAction: () => 0,
  afterLastTrapeze: Padding(
    padding: const EdgeInsets.only(left: 3),
    child: Container(
      width: 90,
      height: 20,
      decoration: const BoxDecoration(color: Color.fromRGBO(156, 17, 6, 1)),
    ),
  ),
  firstDecoration: const BoxDecoration(color: Color.fromRGBO(248, 151, 0, 1)),
  secondDecoration: const BoxDecoration(color: Color.fromRGBO(246, 103, 16, 1)),
  thirdDecoration: const BoxDecoration(color: Color.fromRGBO(237, 36, 23, 1)),
  fourDecoration: const BoxDecoration(color: Color.fromRGBO(156, 17, 6, 1)),
  childOneFirstTrapeze: const Text('1First', style: TextStyle(fontWeight: FontWeight.bold)),
  childOneSecondTrapeze: const Text('1Second'),
  childOneThirdTrapeze: const Text('1Third'),
  childTwoFirstTrapeze: const Text('2First', style: TextStyle(fontWeight: FontWeight.bold)),
  childTwoSecondTrapeze: Text('2Second', style: TextStyle(color: Colors.purple[900])),
  childTwoThirdTrapeze: const Text('2Third'),
  childThreeFirstTrapeze: const Text('3First', style: TextStyle(fontWeight: FontWeight.bold)),
  childThreeSecondTrapeze: const Text('3Second'),
  childThreeThirdTrapeze: const Text('3Third'),
  childFourFirstTrapeze: const Text('4First', style: TextStyle(fontWeight: FontWeight.bold)),
  childFourSecondTrapeze: const Text('4Second', style: TextStyle(color: Colors.amber)),
  childFourThirdTrapeze: const Text('4Third'),
  firstIcon: const Positioned(
    top: 7,
    left: 20,
    child: Icon(Icons.add_shopping_cart_sharp, color: Colors.deepPurpleAccent),
  ),
  thirdIcon: const Positioned(top: 7, right: 20, child: Icon(Icons.add_chart, color: Colors.white70)),
  secondIcon:
      const Positioned(top: 14, right: 20, child: Icon(Icons.stacked_line_chart_outlined, color: Colors.white)),
)
```

For a more detail example please take a look at the `example` folder.

## Example

Trapezoid:

<table>
  <tr>
    <td> <img src="https://github.com/diogoroos/trapezoid/assets/78812662/9476ae67-fb4a-4acd-ae28-3b41c17f6271"></td>
    <td><img src="https://github.com/diogoroos/trapezoid/assets/78812662/70018692-0031-4e2a-96a7-96710c0c7575"></td>
   </tr> 
</table>

## -

If something is missing, feel free to open a ticket or contribute!
