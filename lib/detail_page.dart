import 'package:flutter/material.dart';
import 'package:projek_sesi5/player.dart';

class DetailPages extends StatelessWidget {
  final Player player;

  const DetailPages({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PERSIJA TEAM')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.red),
              child: Text(
                player.nama,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Image(image: AssetImage(player.gambar)),
            const SizedBox(height: 10),
           
            

          

            const SizedBox(height: 10),
            textProfile("Name", player.nama),
            textProfile("Hobby", player.posisi),
            textProfile("Address", player.noPunggung),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color: Colors.red),
              child: const Text(
                'Deskripsi',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 10,),

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
 Row textProfile(String label,String teks) {
    return Row(
              children: [
                Container(
                  width: 80,
                  child: Text(
                    "- $label",
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Text (":",style: TextStyle(fontSize: 18)),
                Text(teks,style: const TextStyle(fontSize: 19)),
               
              ],
            );
  }
}
