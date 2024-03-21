import 'package:flutter/material.dart';
import 'package:example/trapezoid.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Keyboard Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Keyboard Example'),
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: textCtrl,
            enabled: false,
          ),
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
            footerLeftAction: () {},
            footerLeftChild: Container(
              alignment: Alignment.center,
              width: 50,
              height: 50,
              child: const Icon(Icons.done),
            ),
          ),
        ],
      ),
    );
  }

  _onKeyboardTap(String value) {
    setState(() {
      textCtrl.text = textCtrl.text + value;
    });
  }
}
