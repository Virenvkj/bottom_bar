import 'package:flutter/material.dart';

class MediaQueryEx extends StatefulWidget {
  const MediaQueryEx({super.key});

  @override
  State<MediaQueryEx> createState() => _MediaQueryExState();
}

class _MediaQueryExState extends State<MediaQueryEx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height:  MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.yellow,
          child: const Text(
            "We are learning MediaQuery",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
