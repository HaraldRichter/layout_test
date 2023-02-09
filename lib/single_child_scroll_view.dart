import 'package:flutter/material.dart';

class SinglechildscrwollviewExample extends StatelessWidget {
  const SinglechildscrwollviewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dis is a Test!',
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            color: Colors.blueGrey,
          ),
          Container(
            height: 50,
            color: Colors.black,
          ),
          // Um das SingleChildScrollView funktionabel zu machen,
          // muss es in ein Expanded gepackt werden (warum auch immer):
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 200,
                  color: Colors.green,
                ),
                Container(
                  height: 200,
                  color: Colors.red,
                ),
                Container(
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  height: 200,
                  color: Colors.yellow,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
