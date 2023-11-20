import 'package:flutter/material.dart';
import 'package:projek_sesi5/detail_page.dart';
import 'package:projek_sesi5/player.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Player> listPemain = Player.dummyData;
    return SafeArea(
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Icon(Icons.list_alt),
              Text(
                "List Pemain",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listPemain.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPages(player: listPemain[index]),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 164, 135, 135),
                          offset: Offset(1, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage(listPemain[index].gambar),
                            width: 100, // Sesuaikan lebar gambar sesuai kebutuhan
                            height: 100, // Sesuaikan tinggi gambar sesuai kebutuhan
                          ),
                        ),
                        const SizedBox(width: 10, height: 10), // Memberikan jarak antara gambar dan teks
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              buildInfoContainer("Nama", listPemain[index].nama, 16, true),
                              buildInfoContainer("No Punggung", listPemain[index].noPunggung, 14, false),
                              buildInfoContainer("Posisi", listPemain[index].posisi, 14, false),
                          ],
                        ),
                      ],
                    )

                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
  Widget buildInfoContainer(String label, String value, double fontSize, bool isBold) {
  return Container(
    margin: const EdgeInsets.only(bottom: 4),
    child: Text(
      "$label: $value",
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    ),
  );
}

}
