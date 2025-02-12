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
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(
              color: Colors.red,
              width: 10,
              strokeAlign: BorderSide.strokeAlignInside,
            ),
            image: const DecorationImage(
              image: ExactAssetImage(
                'assets/images/onboarding.png',
              ),
            ),
            gradient: const LinearGradient(colors: [
              Colors.red,
              Colors.yellow,
              Colors.black,
            ]),
            shape: BoxShape.rectangle,
            boxShadow: const [
              BoxShadow(
                blurRadius: 100,
                blurStyle: BlurStyle.outer,
                spreadRadius: 1,
                offset: Offset(10, 100),
                color: Colors.black,
              ),
            ],
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          padding: const EdgeInsets.all(20),
          child: const Text(
            "Hello hi there jhfdjhfdjhfdjhfjhdfjdhf\n therjehrjh \n fdjhdjfhdjfdh jhfdjhfdf",
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
