import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("routesによるスクリーンの登録"),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: ElevatedButton(
              onPressed: () {
                print("ボタンが押された");
                Navigator.pushNamed(
                  context,
                  '/second',
                  arguments: 2,
                );
              },
              child: const Text("次の画面へ")),
        ),
      ),
    );
  }
}
