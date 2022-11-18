import 'package:flutter/material.dart';

import 'homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ///background image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.network(
              "https://user-images.githubusercontent.com/42827184/202755316-9a995c78-5155-4cdf-94b5-3efed9949854.png",
              fit: BoxFit.cover,
            ),
          ),

          ///background gradient
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 250,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  end: Alignment.topCenter,
                  begin: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    Colors.black12,
                  ],
                ),
              ),
            ),
          ),

          ///contents
          Positioned(
            bottom: 70,
            left: 0,
            right: 0,
            child: Column(
              children: [
                ///title
                const Text(
                  "Enjoy Every\nmoment with us!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                ///
                const SizedBox(height: 40),

                ///continue button
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: MaterialButton(
                    onPressed: () {
                      ///navigation
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    color: Colors.red.shade300,
                    height: 60,
                    minWidth: 250,
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
