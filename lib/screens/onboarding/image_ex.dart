import 'package:flutter/material.dart';

class OnboardingHome extends StatelessWidget {
  const OnboardingHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ColoredBox(
          color: Colors.red,
          child: Image.network(
            'https://images.pexels.com/photos/1213447/pexels-photo-1213447.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
            alignment: Alignment.center,
            errorBuilder: (context, error, stackTrace) {
              return const Text("Not able to fetch image");
            },
            fit: BoxFit.contain,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress?.cumulativeBytesLoaded !=
                  loadingProgress?.expectedTotalBytes) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return child;
            },
          ),
        ),
      ),
    );
  }
}
