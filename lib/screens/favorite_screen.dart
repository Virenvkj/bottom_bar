import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ColoredBox(
                color: Colors.yellow,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_circle,
                    size: 30,
                  ),
                ),
              ),
              const ColoredBox(
                color: Colors.teal,
                child: Text(
                  'Press this button',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              ColoredBox(
                color: Colors.green,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.circle_notifications,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
