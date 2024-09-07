import 'dart:math';

Future<void> main() async {
  print('Tebak Angka Boom!');
  print('Coba tebak angka dari 0 sampai 10 ya');
  await tunggu();
  await tebakAngkaBoom();
}

Future<void> tunggu() async {
  await Future.delayed(Duration(seconds: 2));
}

Future<void> tebakAngkaBoom() async {
  Random random = Random();
  int angkaBoom = random.nextInt(11);
  int percobaan = 0;
  
  List<int> pilihanAngka = [5, 8, 3, 1, 4];
  
  for (int angkaTebakkan in pilihanAngka) {
    percobaan++;
    print('Kamu nebak: $angkaTebakkan');
    await Future.delayed(Duration(seconds: 2));
    
    if (angkaTebakkan == angkaBoom) {
      print('Mengkeren bray! Kamu berhasil menebak angka boomnya $angkaBoom dalam $percobaan kali coba.');
      return;
    } else if (angkaTebakkan < angkaBoom) {
      print('Terlalu rendah bray');
    } else {
      print('Terlalu tinggi bray');
    }
  }
  
  print('Kamu belum beruntung bray');
  print('Angka boomnya: $angkaBoom');
}