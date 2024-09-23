import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontSize: 20)),
        centerTitle: true,
        backgroundColor: Colors.orange[400],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://picsum.photos/200'), // User's profile picture
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User Name', // Replace with user's name
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'User ID: 123456', // Replace with user's ID
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Divider(thickness: 1),

            // Options Row
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildOption(Icons.list, 'Orders'),
                  _buildOption(Icons.card_giftcard, 'Vouchers'),
                  _buildOption(Icons.location_on, 'Addresse'),
                ],
              ),
            ),

            const Divider(thickness: 1),

            // Settings List
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSettingsOption(Icons.person, 'My Profile'),
                  _buildSettingsOption(Icons.notifications, 'Notifications'),
                  _buildSettingsOption(Icons.settings, 'Settings'),
                  _buildSettingsOption(Icons.payment, 'Payment'),
                  _buildSettingsOption(Icons.logout, 'Logout'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.black.withOpacity(0.1),
          child: Icon(icon, color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildSettingsOption(IconData icon, String label) {
    return GestureDetector(
      onTap: () {
        // Implement navigation or functionality
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.green),
            const SizedBox(width: 16),
            Text(label, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
