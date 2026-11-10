import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.teal,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 12),
                Text(
                  'Rafa Fathur Rohman',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  '1124160130',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  'Teknik Informatika',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                Card(
                  elevation: 2,
                  child: Column(
                    children: const [
                      InfoTile(
                        icon: Icons.email,
                        label: 'Email',
                        value: 'rafa@gmail.com',
                      ),
                      Divider(height: 1),
                      InfoTile(
                        icon: Icons.phone,
                        label: 'HP',
                        value: '+62 812345678910',
                      ),
                      Divider(height: 1),
                      InfoTile(
                        icon: Icons.class_,
                        label: 'Kelas',
                        value: 'TI24SE3',
                      ),
                      Divider(height: 1),
                      InfoTile(
                        icon: Icons.code,
                        label: 'GitHub',
                        value: 'github.com/rapp-afk',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  elevation: 2,
                  child: Column(
                    children: const [
                      InfoTile(
                        icon: Icons.computer,
                        label: 'Keahlian Utama',
                        value: 'Frontend Dev',
                      ),
                      Divider(height: 1),
                      InfoTile(
                        icon: Icons.mobile_friendly,
                        label: 'Keahlian Tambahan',
                        value: 'Flutter Mobile App Dev',
                      ),
                      Divider(height: 1),
                      InfoTile(
                        icon: Icons.sports_esports,
                        label: 'Hobi',
                        value: 'Bermain Game & Coding',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.info),
      ),
    );
  }
}