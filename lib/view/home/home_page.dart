import 'package:duggar_dost/view/home/profile_page.dart';
import 'package:flutter/material.dart';

import 'menu_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // Adjust the _pages list to only include the pages used
  final List<Widget> _pages = [
    HomeContent(),
    const MenuPage(),
    const CartPage(),// Home content
    const ProfilePage(), // Profile page
    // Other pages can be added here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Open menu or drawer
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Implement search action
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu', // Placeholder for Menu page
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart', // Placeholder for Cart page
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex, // Set the current index
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey, // Change color for unselected items
        onTap: (index) {
          setState(() {
            // Ensure the index is within the range of _pages
            if (index < _pages.length) {
              _currentIndex = index; // Update current index
            }
          });
        },
      ),
    );
  }
}



// HomeContent Widget
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Banner for offers
        Container(
          height: 120,
          width: double.infinity,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage('https://picsum.photos/250?image='), // Replace with your offer image
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              'Exciting Offers Awaiting You!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                shadows: [
                  Shadow(color: Colors.black54, offset: Offset(2, 2), blurRadius: 4),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        // Products List
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75, // Adjust aspect ratio to make it look good
            ),
            itemCount: 8, // Replace with your product count
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        'https://picsum.photos/250?image=9${index + 1}', // Replace with your product images
                        fit: BoxFit.cover,
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Product ${index + 1}',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '\$${(index + 1) * 10}', // Example price
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
