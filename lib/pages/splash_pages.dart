import "package:flutter/material.dart";
import "package:myapp/theme.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Container(
          width: 92,
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/img/icons_cactus.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
