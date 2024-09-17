import 'package:duggar_dost/view/login/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          SizedBox(
            height: media.height,
            width: media.width,
            child: Image.asset(
              "assets/img/background.png", // Path to your background image
              fit: BoxFit.cover,
            ),
          ),

          // Content on top of the background
          Column(
            children: [
              // Welcome text at the top-left corner
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Duggar Dost',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange, // Different color for "Duggar Dost"
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Spacer to push content to the bottom
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // First button: Continue with Email or Phone
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add action for continuing with email or phone
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(16),
                              backgroundColor: Colors.orange,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Continue with Email or Phone',
                              style: TextStyle(fontSize: 16,
                              color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16), // Space between buttons

                      // Second button: Create an Account
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  builder: (context) => const SignUpPage(),
                              ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.all(16),
                              backgroundColor: Colors.white, // White background
                              side: const BorderSide(color: Colors.orange, width: 2),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              'Create an Account',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange, // Text color
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40), // Space at the bottom
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
