import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final biodata  = <String, String>{};
  MyApp({super.key}){
  biodata['Name'] = 'Ferian Ardiansa';
  biodata['Email'] = 'ferianardiansa22@gmail.com';
  biodata['Phone'] = '+6295523873288';
  biodata['Hobby'] = 'Balap';
  biodata['Address'] = 'Baleendah';
  biodata['Desc'] = '''Dalam kode yang Anda berikan, biodata adalah sebuah variabel yang merupakan Map dengan tipe data <String, String>. Ini berarti biodata adalah sebuah map yang menggunakan string sebagai kunci (key) dan string juga sebagai nilai (value). Map ini digunakan untuk menyimpan informasi seperti nama, alamat email, nomor telepon, hobi, alamat, dan deskripsi.''';
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Aplikasi Biodata')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.orange),
                child: const Text(
                  'Ferian Ardiansa',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Image(image: AssetImage("assets/poto.jpg")),
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
              
              textProfile("Name", biodata['Name']??''),
              textProfile("Hobby", biodata['Hobby']??''),
              textProfile("Address", biodata['Address']??''),
           
              
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                decoration: const BoxDecoration(color: Colors.orange),
                
                child: const Text(
                  'Deskripsi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              
               Text(biodata['Desc']??''),
               
            ],
          ),
        ),
      ),
    );
  }

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

  Expanded btnprofile(IconData iconBtn, Color bkgColor, String url) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          launchURL(url);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: bkgColor,
          foregroundColor: Colors.white,
        ),
        child: Icon(iconBtn),
      ),
    );
  }

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}



