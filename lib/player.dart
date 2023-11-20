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
      gambar: 'assets/ada.jpg',
      noPunggung: '26',
      detail: 'Andritany Ardiyasa pemain persija',
    ),
    Player(
      nama: 'Firza Andika',
      posisi: 'Goal Keeper',
      gambar: 'assets/poto.jpg',
      noPunggung: '26',
      detail: 'Firza Andika Pemain Persija',
    ),
  ];
}