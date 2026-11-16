import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Mahasiswa'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Rafa Fathur Rohman',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              '1124160130 | Teknik Informatika - Software Engineering',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            
            // Kartu Riwayat Pendidikan, Keahlian & Hobi
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.school, color: Colors.blue),
                        SizedBox(width: 8),
                        Text(
                          'Riwayat Pendidikan',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Text('• SMK Tunas Harapan Tangerang (Teknik Komputer & Jaringan)'),
                    const Text('• Institut Teknologi dan Bisnis Bina Sarana Global (Teknik Informatika - Software Engineering)'),
                    
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Icon(Icons.code, color: Colors.purple),
                        SizedBox(width: 8),
                        Text(
                          'Keahlian & Teknologi',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Text('• Pemrograman: Flutter (Dart), PHP (CodeIgniter 3)'),
                    const Text('• Tools & Database: VS Code, Apache NetBeans, Git/GitHub, DBeaver, PostgreSQL, MySQL'),
                    
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Icon(Icons.sports_esports, color: Colors.red),
                        SizedBox(width: 8),
                        Text(
                          'Hobi & Aktivitas',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Divider(),
                    const Text('• Main Game (Roblox, Point Blank, Mobile Legends, Minecraft)'),
                    const Text('• Software Development & Eksperimen Coding'),
                    const Text('• Badminton'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              '© 2026 Rafa Fathur Rohman\nInstitut Teknologi dan Bisnis Bina Sarana Global',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}