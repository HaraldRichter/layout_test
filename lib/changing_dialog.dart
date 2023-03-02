import 'package:flutter/material.dart';
import 'dart:io';

class ChangingDialogScreen extends StatelessWidget {
  const ChangingDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              bool sendingData = false;
              return StatefulBuilder(
                builder: (context, setState) {
                  return AlertDialog(
                    title: Text("Send Data Dialog"),
                    content: Text(sendingData.toString()),
                    actions: sendingData
                        ? null
                        : [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    sendingData = !sendingData;
                                    // Navigator.pop(context);
                                    // sendData(context);
                                  });
                                  sleep(Duration(seconds: 2));
                                },
                                child: Text("SEND"))
                          ],
                  );
                },
              );
            },
          );
        },
        child: Text("Open Dialog"),
      ),
    );
  }

  Future? sendData(BuildContext context) {
    sleep(Duration(seconds: 2));
    Navigator.pop(context);
  }
}
