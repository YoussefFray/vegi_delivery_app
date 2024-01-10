import 'package:flutter/material.dart';
import 'package:food_app/providers/user_provider.dart'; // Import your UserProvider

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  late UserProvider userProvider; // Initialize UserProvider

  @override
  void initState() {
    super.initState();
    userProvider = UserProvider();
    userProvider.getUserData(); // Fetch user data when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(userProvider.currentUserData?.userImage ?? ''),
            ),
            SizedBox(height: 20),
            Text(
              userProvider.currentUserData?. userName ?? '',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              userProvider.currentUserData?.userEmail ?? '',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add logic for editing the profile
                // This can navigate to another page for editing or show a bottom sheet, etc.
                print('Edit Profile');
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
