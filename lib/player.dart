class Player{
  String nama;
  String posisi;
  String gambar;
  String noPunggung;
  String detail;

  Player({
    required this.nama,
    required this.posisi,
    required this.gambar,
    required this.noPunggung,
    required this.detail,
  });

  static List<Player> dummyData = [
    Player(
      nama: 'Andritany Ardiyasa',
      posisi: 'Goal Keeper',
      gambar: 'assets/andritany.png',
      noPunggung: '26',
      detail: '''Pada tahun 2007, ia memulai karier seniornya dengan bermain untuk Pesik Kuningan, bersama Pesik Kuningan hanya sekitar empat bulan saja. Lalu Pada tahun 2008, ia bergabung dengan Sriwijaya. Di Selama 2 musim di Sriwijaya, ia hanya bermain sebanyak 1 kali, kalah bersaing dengan penjaga gawang Ferry Rotinsulu dan Dede Sulaiman. Pada tahun 2010, putra asli betawi ini akhirnya bergabung di klub tempat ia berasal, Persija Jakarta.''',
    ),
    Player(
      nama: 'Firza Andika',
      posisi: 'Defender',
      gambar: 'assets/firza.png',
      noPunggung: '11',
      detail: 'Firza Andika adalah pemain sepak bola profesional berkebangsaan Indonesia yang bermain untuk klub Liga 1 Persija Jakarta dan Timnas Indonesia U-23',
    ),
    Player(
      nama: 'Alfriyanto Nico Saputro',
      posisi: 'Midfielder',
      gambar: 'assets/nico.png',
      noPunggung: '21',
      detail: '''Firza Andika Pemain Persija''',
    ),
    Player(
      nama: 'Marko Simic',
      posisi: 'Striker',
      gambar: 'assets/simic.png',
      noPunggung: '9',
      detail: 'Marko Šimic (lahir 23 Januari 1988) adalah pemain sepak bola profesional asal Kroasia yang bermain sebagai striker. Saat ini ia tergabung di klub Persija Jakarta .',
    ),
    Player(
      nama: 'Riko Simanjuntak',
      posisi: 'Midfielder',
      gambar: 'assets/riko.png',
      noPunggung: '25',
      detail: 'Riko Simanjuntak (lahir 26 Januari 1992) adalah seorang pemain sepak bola yang bermain pada posisi gelandang sayap pada Liga 1 untuk tim Persija Jakarta[4] dan tim nasional sepak bola Indonesia .',
    ),
    Player(
      nama: 'Dony Tri Pamungkas',
      posisi: 'Midfielder',
      gambar: 'assets/dony.png',
      noPunggung: '77',
      detail: 'Riko Simanjuntak (lahir 26 Januari 1992) adalah seorang pemain sepak bola yang bermain pada posisi gelandang sayap pada Liga 1 untuk tim Persija Jakarta[4] dan tim nasional sepak bola Indonesia .',
    ),
   
    Player(
      nama: 'Hanif Abdurauf Sjahbandi',
      posisi: 'Midfielder',
      gambar: 'assets/hanif.png',
      noPunggung: '19',
      detail: 'Hanif Abdurrauf Sjahbandi (lahir 7 April 1997) adalah seorang pemain sepak bola Indonesia. Saat ini, ia bermain untuk Persija Jakarta dan Tim nasional sepak bola Indonesia.[1]',
    ),
  ];
}