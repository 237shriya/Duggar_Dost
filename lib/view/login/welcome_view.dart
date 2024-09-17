import 'package:duggar_dost/view/login/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Adjust layout
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/img/1.png",
                width: media.width,
                height: media.height * 0.6, // Adjust the image height
                fit: BoxFit.cover,
              ),
            ],
          ),
          Container(
            width: media.width,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            color: Colors.white, // Background color for text container
            child: Column(
              children: [
                Text(
                  "Duggar Dost",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Delivering fresh groceries and delicious meals from your favorite local stores, straight to your doorstep!",
                  textAlign: TextAlign.center,

                  style: TextStyle(
                   //fontFamily: "Gilroy",
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40), // Space at the bottom
            child: GestureDetector(
              onTap: () {
                // Navigate to the welcome page or another page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const WelcomePage()), // Replace WelcomePage with your target page
                );
              },
              child: Container(
                padding: const EdgeInsets.all(18), // Padding inside the circle
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange, // Orange background for the circle
                ),
                child: Icon(
                  Icons.arrow_forward,
                  size: 40,
                  color: Colors.white, // White arrow inside the circle
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


