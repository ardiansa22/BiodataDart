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
                            width: 50, // Sesuaikan lebar gambar sesuai kebutuhan
                            height: 50, // Sesuaikan tinggi gambar sesuai kebutuhan
                          ),
                        ),
                        Column(
                          children: [
                            Text(listPemain[index].nama),
                            Text(listPemain[index].noPunggung),
                            Text(listPemain[index].posisi),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
