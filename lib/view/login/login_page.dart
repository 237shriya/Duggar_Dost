import 'package:duggar_dost/view/login/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo at the top
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.orange,
                child: Icon(
                  Icons.app_registration,
                  size: 50,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Welcome text
            Center(
              child: Text(
                'Welcome to Duggar Desh',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 40), // Space before form

            // Phone number and password fields
            _buildLabelledTextField('Phone Number'),
            const SizedBox(height: 16), // Space between fields
            _buildPasswordTextField('Password'),
             // Space before button
            Padding(
              padding: const EdgeInsets.only(left: 270),

              child: TextButton(
                onPressed: () {
                  // Add action for forgot password
                },
                child: const Text(

                  'Forgot Password?',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Login button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Add action for login
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: Size(double.infinity, 50), // Full width button
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 14), // Space after login button



            const SizedBox(height: 24),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSocialButton('Google', Icons.g_mobiledata, Colors.red),
                _buildSocialButton('Apple', Icons.apple, Colors.black),
              ],
            ),
            const SizedBox(height: 60), // Pushes the prompt to the bottom

            // Sign up prompt
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Don\'t have an account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
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

  // Helper method to build social buttons
  Widget _buildSocialButton(String text, IconData icon, Color color) {
    return ElevatedButton.icon(
      onPressed: () {
        // Add action for social sign-in
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        minimumSize: Size(100, 50), // Set button size
      ),
      icon: Icon(
        icon,
        color: Colors.white,
      ),
      label: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
