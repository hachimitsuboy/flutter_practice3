import 'package:flutter/material.dart';
import 'dart:async';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var _flag = true;

  @override
  Widget build(BuildContext context) {
    var message = ModalRoute.of(context)?.settings.arguments;


    return Scaffold(
      appBar: AppBar(
        title: const Text("LinearProgressIndicator"),
      ),
      body: Center(
        child: Column(
          children: [
            Visibility(
              visible: _flag,
              child: const LinearProgressIndicator(),
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {
                print(_flag);
                setState(() {
                  _flag = false;
                });
              },
              child: const Text("インジゲーターの切り替えボタン"),
            ),
          ],
        ),
      ),
    );
  }
}
