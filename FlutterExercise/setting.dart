import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:flutter_onboarding_ui/screens//aboutUs/aboutUs.dart';
import 'languages_screen.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: SettingsList(
        // backgroundColor: Colors.orange,
        sections: [
          SettingsSection(
            title: 'Common',
            // titleTextStyle: TextStyle(fontSize: 30),
            tiles: [
              SettingsTile(
                title: 'Language',
                subtitle: 'English',
                leading: Icon(Icons.language),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => LanguagesScreen()));
                },
              ),
              SettingsTile(
                title: 'Contact Us',
                leading: Icon(Icons.phonelink_lock),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => About()));
                },
              ),
             
            ],
          ),
          SettingsSection(
            title: 'Account',
            tiles: [
              SettingsTile(title: 'Phone number', leading: Icon(Icons.phone)),
              SettingsTile(title: 'Email', leading: Icon(Icons.email)),
              SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app)),
            ],
          ),
          SettingsSection(
            title: 'Security',
            tiles: [/*
              SettingsTile.switchTile(
                title: 'Lock app in background',
                leading: Icon(Icons.phonelink_lock),
                switchValue: lockInBackground,
                onToggle: (bool value) {
                  setState(() {
                    lockInBackground = value;
                    notificationsEnabled = value;
                  });
                },
              ),  */                        
              SettingsTile.switchTile(
                title: 'Enable Notifications',
                enabled: notificationsEnabled,
                leading: Icon(Icons.notifications_active),
                switchValue: true,
                onToggle: (value) {},
              ),
            ],
          ),
          SettingsSection(
            title: 'Misc',
            tiles: [
              SettingsTile(
                  title: 'Terms of Service', leading: Icon(Icons.description)),
              
            ],
          ),
          CustomSection(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 8),
                  child: Image.asset(
                    'assets/settings.png',
                    height: 50,
                    width: 50,
                    color: Color(0xFF777777),
                  ),
                ),
                Text(
                  'Version: 2.4.0 (287)',
                  style: TextStyle(color: Color(0xFF777777)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}