import 'package:flutter/material.dart';
import 'package:projek_sesi5/player.dart';

class DetailPages extends StatelessWidget {
  final Player player;

  const DetailPages({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Aplikasi Biodata')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.orange),
              child: Text(
                player.nama,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Image(image: AssetImage(player.gambar)),
            const SizedBox(height: 10),
            Row(
              children: [
                btnprofile(Icons.email, Colors.blue, 'https://www.google.com'),
                const SizedBox(width: 10),
                btnprofile(Icons.chat_bubble, Colors.black, 'https://wa.me/085523873288'),
                const SizedBox(width: 10),
                btnprofile(Icons.phone, Colors.red, 'tel:+6285523873288'),
              ],
            ),
            const SizedBox(height: 10),

            // Placeholder functions (replace with actual implementations)
            textProfile("Name", player.nama),
            textProfile("Hobby", player.posisi),
            textProfile("Address", player.noPunggung),

            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(color: Colors.orange),
              child: const Text(
                'Deskripsi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            // Display the description from the Player
            Text(player.detail),
          ],
        ),
      ),
    );
  }

  // Placeholder for btnprofile function (replace with actual implementation)
  Widget btnprofile(IconData icon, Color color, String url) {
    // Implement your button widget here
    return Container();
  }

  // Placeholder for textProfile function (replace with actual implementation)
  Widget textProfile(String label, String value) {
    // Implement your text widget here
    return Container();
  }
}
