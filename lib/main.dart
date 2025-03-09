import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // menghilangkan banner debug
      title: 'Tugas 1',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Profil'),


    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      
      body: Container(
        color: Colors.lightBlue[50],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Foto profil
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/Gambar.jpg'), // Ganti dengan path gambar kamu
            ),
            const SizedBox(height: 20),
            // Nama dan title
            const Text(
              'I Nyoman Sucitra Ananda Kusuma',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            // Website
            const Text(
              'http://www.sucitra.com',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            const SizedBox(height: 30),
            // 4 tombol menu
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 30,
                children: [
                  menuButton(Icons.gps_fixed, 'Singaraja', Colors.green),
                  menuButton(Icons.store, 'Penarukan', Colors.orange),
                  menuButton(Icons.music_note, 'Pop', Colors.purple),
                  menuButton(Icons.apartment, 'Undiksha', Colors.blue),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget menuButton(IconData icon, String label, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: iconColor),
          const SizedBox(height: 5),
          Container(
            color: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.yellow,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
