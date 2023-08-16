import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/profile_image.jpg'), // Replace with your image asset
            ),
            SizedBox(height: 16),
            Text(
              'John Doe', // Replace with user's name
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'john.doe@example.com', // Replace with user's email
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Implement edit profile logic
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
