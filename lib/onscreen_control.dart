import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class OnscreenControl extends StatelessWidget {
  final WebSocketChannel? ws;
  final String status;
  final Function(String) onCommand;

  const OnscreenControl(
      {Key? key, this.ws, required this.status, required this.onCommand})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onscreen Control - $status'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => onCommand('prev'),
              child: const Text('Previous'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => onCommand('play'),
              child: const Text('Play'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => onCommand('next'),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
