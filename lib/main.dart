import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title:const Text('Aplikasi Biodata'),),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color:Colors.pink),
              child: const Text('Ferian Ardiansa', style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
              ),
            ),
            SizedBox(height: 10),
            const Image(image: AssetImage("assets/poto.jpg")),
            const SizedBox(height: 10),
            Row(
              children: [
                btnprofile(Icons.email,Colors.blue),
                SizedBox(width: 10),
                btnprofile(Icons.chat_bubble,Colors.black),
                SizedBox(width: 10),
                btnprofile(Icons.phone,Colors.red),
            
              ],
            ),
            Text('Hobby : Makan'),
            Text('Alamat : Baleendah'),
            Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(color:Colors.pink),
              child: const Text('Deskripsi', style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20),
              ),
            ),
            Text("saya bernama Ferian Ardiansa Junardi orang terganteng sedunia")

            ]),
        )),
    );
  }

  Expanded btnprofile(IconData iconBtn, Color bkgColor) {
    return Expanded(
                child: ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: bkgColor,
                  foregroundColor: Colors.white,
                ),
                child: Icon(iconBtn)),
              );
  }
}

