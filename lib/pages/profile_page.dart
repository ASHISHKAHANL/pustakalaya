import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor:
            Colors.blue, // Set the same color as in the second image
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ProfileOption(
            icon: Icons.person,
            title: 'Authors',
            subtitle: 'Find your books by authors',
            onTap: () {},
          ),
          ProfileOption(
            icon: Icons.check_box,
            title: 'Choose Topic',
            subtitle: 'Select your interested category',
            onTap: () {},
          ),
          ProfileOption(
            icon: Icons.format_paint,
            title: 'Select Theme',
            subtitle: 'Choose your app theme',
            onTap: () {},
          ),
          SwitchListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            title: Text('Disable Push Notification'),
            subtitle: Text('Enable/Disable push notifications'),
            value: false,
            onChanged: (value) {},
            secondary: Icon(Icons.notifications_off),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Others',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          ProfileOption(
            title: 'Rate Us',
            onTap: () {},
          ),
          ProfileOption(
            title: 'Privacy Policy',
            onTap: () {},
          ),
          ProfileOption(
            title: 'Terms & Conditions',
            onTap: () {},
          ),
          ProfileOption(
            title: 'About Us',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  ProfileOption({
    this.icon,
    required this.title,
    this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null ? Icon(icon) : null,
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
