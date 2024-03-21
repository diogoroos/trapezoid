import 'package:flutter/material.dart';
import 'package:trapezoid/trapezoid.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trapezoid Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Trapezoid Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Trapezoid(
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
        ),
      ),
    );
  }
}
