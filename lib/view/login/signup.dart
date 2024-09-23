import 'package:flutter/material.dart';

import 'login_page.dart';
import 'otp_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscurePassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 50,left: 25,right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.app_registration, // Replace with your app logo
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Stylish title above the form
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Welcome to DUGGAR DOST!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),

            ),
            const SizedBox(height: 16), // Space after the title

            // Form fields with labels outside the text box
            _buildLabelledTextField('Name'),
            const SizedBox(height: 16), // Space between fields
            _buildLabelledTextField('Phone Number'),
            const SizedBox(height: 16), // Space between fields
            _buildPasswordTextField('Password'),
            const SizedBox(height: 60), // Space before button

            // Sign Up text and button in the same row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => const OtpPage(),
                    ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(12),
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    side: BorderSide(color: Colors.orange, width: 2),
                    minimumSize: Size(55, 55), // Ensure the button is large enough
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 24, // Smaller arrow icon size
                  ),
                ),
              ],
            ),
           // const Spacer(), // Pushes the prompt to the bottom
            const SizedBox(height: 40),
            // Already have an account prompt
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                     // Navigator.pop(context);
                    },
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build labeled text fields
  Widget _buildLabelledTextField(String label, {bool obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8.0), // Space between label and text field
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange, width: 2.0),
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
        ),
      ],
    );
  }

  // Helper method to build password text field with visibility toggle
  Widget _buildPasswordTextField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8.0), // Space between label and text field
        TextField(
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.orange, width: 2.0),
              borderRadius: BorderRadius.circular(12.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: _togglePasswordVisibility,
            ),
          ),
        ),
      ],
    );
  }
}
