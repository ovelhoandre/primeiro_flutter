import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.blue,
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.orange,
            width: 100,
            height: 100,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
              ]),
          Container(
            color: Colors.amber,
            height: 30,
            width: 300,
            child: const Text(
              'Teste',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                //print('Apertou');
              },
              child: const Text('BOTÃO'))
        ],
      ),
    );
  }
}
