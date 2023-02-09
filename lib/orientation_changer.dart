import 'package:flutter/material.dart';
import 'size_constants.dart';

class OrientationChangerExample extends StatelessWidget {
  const OrientationChangerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            headerTile(context),
            cardTile(),
            cardTile(),
            cardTile(),
            cardTile(),
            cardTile(),
            cardTile(),
          ],
        ),
      ),
    );
  }

  Widget headerTile(BuildContext context) {
    return Container(
      color: Colors.green,
      height: isLandscape(context) ? 100 : 150,
      child: OrientationSwitcher(
        children: [
          Container(
            // Container für das UFO-Bild
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          Expanded(
            child: SizedBox(
              // Container für den Schriftzug und die beiden Buttons
              height: 50,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '   Solarlampe',
                    style: TextStyle(fontSize: 30),
                  ),
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      SizedBox(width: 5),
                      IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardTile() {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              decoration: const BoxDecoration(color: Colors.grey),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.blue,
                        width: 80,
                      ),
                      Container(
                        color: Colors.teal,
                        child: const Text('1', style: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                  OrientationSwitcher(
                    children: [
                      Container(child: Text('Lampenname  ')),
                      Container(child: Text('Pulsar  ')),
                      Container(child: Text('123 mAh')),
                    ],
                  ),
                  Container(
                    color: Colors.redAccent,
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}

class OrientationSwitcher extends StatelessWidget {
  const OrientationSwitcher({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return orientation == Orientation.portrait
        ? Column(children: children)
        : Row(children: children);
  }
}
