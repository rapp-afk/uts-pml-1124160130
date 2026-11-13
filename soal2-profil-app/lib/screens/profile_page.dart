import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'edit_profile_page.dart';
import 'about_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile userProfile = Profile(
    name: "Rafa Fathur Rohman",
    nim: "1124160130",
    email: "1124160130@global.ac.id",
    phone: "085710408479",
    major: "Teknik Informatika - Software Engineering",
    bio: "Mahasiswa Institut Teknologi dan Bisnis Bina Sarana Global.",
    avatarUrl: "https://avatars.githubusercontent.com/u/200008369?s=400&u=213107af8f4e02427966636ce9898e1856bbe77b&v=4",
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Tentang Aplikasi',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue.shade100,
              backgroundImage: NetworkImage(userProfile.avatarUrl),
            ),
            const SizedBox(height: 16),
            Text(
              userProfile.name,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "${userProfile.nim} - ${userProfile.major}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 24),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.blue),
              title: const Text('Email'),
              subtitle: Text(userProfile.email),
            ),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.green),
              title: const Text('Telepon'),
              subtitle: Text(userProfile.phone),
            ),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.orange),
              title: const Text('Bio'),
              subtitle: Text(userProfile.bio),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
              icon: const Icon(Icons.edit),
              label: const Text('Edit Profil'),
              onPressed: () async {
                final updatedData = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfilePage(profile: userProfile),
                  ),
                );

                if (updatedData != null && updatedData is Profile) {
                  setState(() {
                    userProfile = updatedData;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}