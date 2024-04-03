import 'package:flutter/material.dart'; // Impor package flutter untuk membuat UI
import 'package:profile_fakultas_teknik/Major.dart'; // Impor file Major.dart untuk mengakses data program studi
import 'package:profile_fakultas_teknik/major_detail.dart'; // Impor file major_detail.dart untuk menavigasi ke halaman detail program studi
import 'package:url_launcher/url_launcher.dart'; // Impor package untuk membuka URL eksternal

void main() {
  runApp(
      const FacultyApp()); // Menjalankan aplikasi dengan root widget FacultyApp
}

const Color blue =
    Color.fromARGB(255, 20, 52, 190); // Mendefinisikan warna biru

class FacultyApp extends StatelessWidget {
  const FacultyApp({Key? key}) : super(key: key); // Konstruktor FacultyApp

  static const Color blue =
      Color.fromARGB(255, 20, 52, 190); // Mendefinisikan warna biru

  get backgroundColor => null; // Mendapatkan warna latar belakang

  @override
  Widget build(BuildContext context) {
    // Method untuk membangun UI
    return MaterialApp(
      // Menginisialisasi aplikasi dengan MaterialApp
      title: 'Fakultas Teknik', // Judul aplikasi
      theme: ThemeData(
        // Tema aplikasi
        primarySwatch: backgroundColor, // Warna utama
        textTheme: TextTheme(
          // Tema teks
          headline6: TextStyle(
            // Gaya teks untuk judul halaman
            color: const Color.fromARGB(255, 255, 255, 255), // Warna putih
            fontSize: 24, // Ukuran font
          ),
          bodyText1: TextStyle(
            // Gaya teks untuk teks badan
            color: Colors.black, // Warna teks hitam
            fontSize: 18, // Ukuran font
          ),
        ),
      ),
      home: const MyHomePage(
        // Halaman utama aplikasi
        title:
            'Sistem Informasi Fakultas Teknik UPN "Veteran" Jawa Timur', // Judul halaman utama
      ),
    );
  }

  Color get color => blue; // Mendapatkan warna
}

class MyHomePage extends StatelessWidget {
  final String title; // Judul halaman

  const MyHomePage({Key? key, required this.title})
      : super(key: key); // Konstruktor MyHomePage

  @override
  Widget build(BuildContext context) {
    // Method untuk membangun UI
    return Scaffold(
      // Widget utama untuk struktur aplikasi
      appBar: AppBar(
        // AppBar sebagai bagian atas aplikasi
        centerTitle: true, // Pusatkan judul
        title: Text(title), // Judul halaman
      ),
      body: SingleChildScrollView(
        // Widget untuk memungkinkan konten digulir
        child: Column(
          // Widget kolom untuk menata konten secara vertikal
          crossAxisAlignment: CrossAxisAlignment
              .start, // Penataan lintas sumbu dimulai dari kiri ke kanan
          children: [
            // Anak-anak kolom
            Padding(
              // Padding untuk menambahkan ruang putih di sekitar widget
              padding: EdgeInsets.all(14.0), // Padding sebesar 14.0
              child: Text(
                // Widget untuk menampilkan teks
                'Profile Program Studi', // Teks
                style: TextStyle(
                  // Gaya teks
                  fontSize: 18, // Ukuran font
                  fontWeight: FontWeight.bold, // Ketebalan font
                ),
              ),
            ),
            Image.asset(
              // Widget untuk menampilkan gambar dari berkas lokal
              'assets/baground_fakultas.jpg', // Path gambar
              width:
                  double.infinity, // Lebar gambar mengisi seluruh lebar layar
              height: 200, // Tinggi gambar
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
            SizedBox(
              // Widget untuk menambahkan ruang kosong vertikal
              height: 20, // Tinggi ruang kosong
            ),
            Padding(
              // Padding untuk menambahkan ruang putih di sekitar widget
              padding: EdgeInsets.symmetric(
                  horizontal: 14.0), // Padding horizontal sebesar 14.0
              child: Text(
                // Widget untuk menampilkan teks
                'Fakultas Teknik di UPN "Veteran" Jawa Timur memiliki berbagai program studi di bidang teknik yang bertujuan untuk menghasilkan lulusan yang kompeten dan siap untuk berkontribusi dalam industri dan masyarakat.\n ', // Teks
                style: TextStyle(
                  // Gaya teks
                  fontSize: 14, // Ukuran font
                ),
              ),
            ),
            Padding(
              // Padding untuk menambahkan ruang putih di sekitar widget
              padding: EdgeInsets.all(8.0), // Padding sebesar 8.0
              child: Text(
                // Widget untuk menampilkan teks
                'Daftar Program Studi:', // Teks
                style: TextStyle(
                  // Gaya teks
                  fontSize: 18, // Ukuran font
                  fontWeight: FontWeight.bold, // Ketebalan font
                ),
              ),
            ),
            ListView.builder(
              // Widget untuk menampilkan daftar item dengan scroll
              shrinkWrap:
                  true, // Agar ListView bisa digulir dalam SingleChildScrollView
              itemCount: Major.samples.length, // Jumlah item dalam daftar
              itemBuilder: (BuildContext context, int index) {
                // Builder untuk membangun setiap item dalam daftar
                return GestureDetector(
                  // Widget untuk menangkap sentuhan pengguna
                  onTap: () {
                    // Saat pengguna men-tap
                    Navigator.push(
                      // Navigasi ke halaman detail program studi
                      context,
                      MaterialPageRoute(
                        builder: (context) => MajorDetail(
                            major: Major.samples[
                                index]), // Halaman detail program studi
                      ),
                    );
                  },
                  child: buildMajorCard(Major.samples[
                      index]), // Membangun card untuk setiap program studi
                );
              },
            ),
            SizedBox(
                height:
                    10), // Widget untuk menambahkan ruang kosong vertikal sebesar 10
            Row(
              // Widget untuk menata konten secara horizontal
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Penataan konten dengan jarak yang sama di sekitarnya
              children: [
                // Anak-anak baris
                GestureDetector(
                  // Widget untuk menangkap sentuhan pengguna
                  onTap: () {
                    // Saat pengguna men-tap
                    Navigator.push(
                      // Navigasi ke halaman profil
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(
                          // Halaman profil
                          name: 'Freya Enggrayni', // Nama
                          ttl:
                              'Surabaya, 13 November 2003', // Tempat, tanggal lahir
                          alamat: 'Jl. Pandugo Baru II/39 C-22', // Alamat
                          number: '081217366228', // Nomor HP
                          email: '22082010003@student.upnjatim.ac.id', // Email
                          github: 'https://github.com/freyaen', // Akun GitHub
                          pendidikan:
                              '\nSDN Kalirungkut I/264\nSMPN 19 Surabaya\nSMAN 14 Surabaya\n', // Riwayat pendidikan
                        ),
                      ),
                    );
                  },
                  child: Container(
                    // Widget untuk menampilkan konten dalam kotak
                    alignment: Alignment.center, // Penataan konten di tengah
                    color: const Color.fromARGB(
                        255, 206, 236, 255), // Warna latar belakang
                    padding: const EdgeInsets.all(8), // Padding sebesar 8
                    child: Row(
                      // Widget untuk menata konten secara horizontal
                      children: const [
                        // Anak-anak baris
                        CircleAvatar(
                          // Widget untuk menampilkan gambar bulatan
                          radius: 20, // Radius bulatan
                          backgroundImage:
                              AssetImage('assets/Freya.jpg'), // Gambar bulatan
                        ),
                        SizedBox(
                            width:
                                16), // Widget untuk menambahkan ruang kosong horizontal sebesar 16
                        Text(
                          // Widget untuk menampilkan teks
                          'Freya Enggrayni', // Teks
                          style: TextStyle(
                            // Gaya teks
                            fontSize: 14, // Ukuran font
                            fontWeight: FontWeight.bold, // Ketebalan font
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  // Widget untuk menangkap sentuhan pengguna
                  onTap: () {
                    // Saat pengguna men-tap
                    Navigator.push(
                      // Navigasi ke halaman profil
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(
                          // Halaman profil
                          name: 'Dinda Okta', // Nama
                          ttl:
                              'Lamongan, 11 Oktober 2004', // Tempat, tanggal lahir
                          alamat: 'Jl. Raya Gembong Babat Lamongan', // Alamat
                          number: '085748918064', // Nomor HP
                          email: '22082010023@student.upnjatim.ac.id', // Email
                          github:
                              'https://github.com/dindaokta11', // Akun GitHub
                          pendidikan:
                              'SDN 1 Gembong\nMTsN 1 lamongan\nSMAN 1 Babat\n', // Riwayat pendidikan
                        ),
                      ),
                    );
                  },
                  child: Container(
                    // Widget untuk menampilkan konten dalam kotak
                    alignment: Alignment.center, // Penataan konten di tengah
                    color: const Color.fromARGB(
                        255, 206, 236, 255), // Warna latar belakang
                    padding: const EdgeInsets.all(8), // Padding sebesar 8
                    child: Row(
                      // Widget untuk menata konten secara horizontal
                      children: const [
                        // Anak-anak baris
                        CircleAvatar(
                          // Widget untuk menampilkan gambar bulatan
                          radius: 20, // Radius bulatan
                          backgroundImage:
                              AssetImage('assets/Okta.jpg'), // Gambar bulatan
                        ),
                        SizedBox(
                            width:
                                8), // Widget untuk menambahkan ruang kosong horizontal sebesar 8
                        Text(
                          // Widget untuk menampilkan teks
                          'Dinda Okta', // Teks
                          style: TextStyle(
                            // Gaya teks
                            fontSize: 14, // Ukuran font
                            fontWeight: FontWeight.bold, // Ketebalan font
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor:
          Color.fromARGB(255, 206, 236, 255), // Warna latar belakang aplikasi
    );
  }

  Widget buildMajorCard(Major major) {
    // Widget untuk membangun kartu program studi
    return Card(
      // Widget untuk menampilkan konten dalam kartu
      color: const Color.fromARGB(
          255, 206, 236, 255), // Warna latar belakang kartu
      child: Row(
        // Widget untuk menata konten secara horizontal
        children: <Widget>[
          // Anak-anak baris
          SizedBox(
            // Widget untuk menambahkan ruang kosong
            height: 100, // Tinggi ruang kosong
            width: 100, // Lebar ruang kosong
            child: Image(
              // Widget untuk menampilkan gambar
              image: AssetImage(major.imageUrl), // Gambar program studi
              fit: BoxFit.cover, // Penyesuaian gambar
            ),
          ),
          Padding(
            // Widget untuk menambahkan ruang putih di sekitar widget
            padding: const EdgeInsets.all(8.0), // Padding sebesar 8.0
            child: Expanded(
              // Widget untuk mengekspansi widget sesuai ruang yang tersedia
              child: Text(
                // Widget untuk menampilkan teks
                major.label, // Label program studi
                style: const TextStyle(
                  // Gaya teks
                  fontSize: 16, // Ukuran font
                  fontWeight: FontWeight.bold, // Ketebalan font
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  // Kelas untuk menampilkan profil singkat
  final String name; // Nama
  final String ttl; // Tempat, tanggal lahir
  final String alamat; // Alamat
  final String number; // Nomor HP
  final String email; // Email
  final String github; // Akun GitHub
  final String pendidikan; // Riwayat pendidikan

  const ProfilePage({
    // Konstruktor untuk ProfilePage
    Key? key,
    required this.name,
    required this.ttl,
    required this.alamat,
    required this.number,
    required this.email,
    required this.github,
    required this.pendidikan,
  }) : super(key: key);

  Future<void> _launchURL(String url) async {
    // Fungsi untuk membuka URL
    if (await canLaunch(url)) {
      // Jika URL dapat dibuka
      await launch(url); // Buka URL
    } else {
      throw 'Could not launch $url'; // Jika tidak dapat membuka URL, lemparkan pesan kesalahan
    }
  }

  @override
  Widget build(BuildContext context) {
    // Method untuk membangun UI
    return Scaffold(
      // Widget utama untuk struktur aplikasi
      appBar: AppBar(
        // AppBar sebagai bagian atas aplikasi
        title: const Text('Profil Singkat'), // Judul halaman
      ),
      body: Padding(
        // Widget untuk menambahkan ruang putih di sekitar widget
        padding: const EdgeInsets.all(16.0), // Padding sebesar 16.0
        child: Card(
          // Widget untuk menampilkan konten dalam kartu
          elevation: 5, // Efek bayangan
          child: Padding(
            // Widget untuk menambahkan ruang putih di sekitar widget
            padding: const EdgeInsets.all(16.0), // Padding sebesar 16.0
            child: Column(
              // Widget untuk menata konten secara vertikal
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Penataan lintas sumbu dimulai dari kiri ke kanan
              children: [
                ListTile(
                  // Widget untuk menampilkan konten dalam baris
                  leading: CircleAvatar(
                    // Widget untuk menampilkan gambar bulatan
                    radius: 30, // Radius bulatan
                    backgroundImage:
                        AssetImage(name == 'Freya Enggrayni' // Gambar profil
                            ? 'assets/Freya.jpg'
                            : 'assets/Okta.jpg'),
                  ),
                  title: Text(
                    // Widget untuk menampilkan teks
                    name, // Nama
                    style: TextStyle(
                      // Gaya teks
                      fontSize: 18, // Ukuran font
                      fontWeight: FontWeight.bold, // Ketebalan font
                    ),
                  ),
                  subtitle: Column(
                    // Widget untuk menampilkan konten dalam kolom
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Penataan lintas sumbu dimulai dari kiri ke kanan
                    children: [
                      Text(
                        // Widget untuk menampilkan teks
                        'Tempat, Tanggal Lahir: $ttl', // Tempat, tanggal lahir
                        style: TextStyle(
                          // Gaya teks
                          fontSize: 16, // Ukuran font
                        ),
                      ),
                      Text(
                        // Widget untuk menampilkan teks
                        'Alamat: $alamat', // Alamat
                        style: TextStyle(
                          // Gaya teks
                          fontSize: 16, // Ukuran font
                        ),
                      ),
                      Text(
                        // Widget untuk menampilkan teks
                        'No. HP: $number', // Nomor HP
                        style: TextStyle(
                          // Gaya teks
                          fontSize: 16, // Ukuran font
                        ),
                      ),
                      GestureDetector(
                        // Widget untuk menangkap sentuhan pengguna
                        onTap: () {
                          // Saat pengguna men-tap
                          _launchEmail(email); // Buka aplikasi email
                        },
                        child: Text(
                          // Widget untuk menampilkan teks
                          'Email: $email', // Email
                          style: TextStyle(
                            // Gaya teks
                            fontSize: 16, // Ukuran font
                            color: Colors.blue, // Warna teks biru
                            decoration: TextDecoration.underline, // Garis bawah
                          ),
                        ),
                      ),
                      GestureDetector(
                        // Widget untuk menangkap sentuhan pengguna
                        onTap: () {
                          // Saat pengguna men-tap
                          _launchURL(github); // Buka URL GitHub
                        },
                        child: Text(
                          // Widget untuk menampilkan teks
                          'GitHub: $github', // Akun GitHub
                          style: TextStyle(
                            // Gaya teks
                            fontSize: 16, // Ukuran font
                            color: Colors.blue, // Warna teks biru
                            decoration: TextDecoration.underline, // Garis bawah
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(), // Widget untuk menambahkan garis pemisah
                Text(
                  // Widget untuk menampilkan teks
                  'Riwayat Pendidikan:', // Riwayat pendidikan
                  style: TextStyle(
                    // Gaya teks
                    fontSize: 16, // Ukuran font
                    fontWeight: FontWeight.bold, // Ketebalan font
                  ),
                ),
                SizedBox(
                    height:
                        8), // Widget untuk menambahkan ruang kosong vertikal sebesar 8
                Text(
                  // Widget untuk menampilkan teks
                  pendidikan, // Riwayat pendidikan
                  style: TextStyle(
                    // Gaya teks
                    fontSize: 16, // Ukuran font
                  ),
                ),
                SizedBox(
                    height:
                        8), // Widget untuk menambahkan ruang kosong vertikal sebesar 8
                Text(
                  // Widget untuk menampilkan teks
                  'Penghargaan:', // Penghargaan
                  style: TextStyle(
                    // Gaya teks
                    fontSize: 16, // Ukuran font
                    fontWeight: FontWeight.bold, // Ketebalan font
                  ),
                ),
                SizedBox(
                    height:
                        8), // Widget untuk menambahkan ruang kosong vertikal sebesar 8
                Text(
                  // Widget untuk menampilkan teks
                  '-', // Tanda hubung
                  style: TextStyle(
                    // Gaya teks
                    fontSize: 16, // Ukuran font
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuka aplikasi email
  void _launchEmail(String email) async {
    final Uri _emailLaunchUri = Uri(
      // URI untuk aplikasi email
      scheme: 'mailto', // Skema email
      path: email, // Alamat email
    );
    if (await canLaunch(_emailLaunchUri.toString())) {
      // Jika email dapat dibuka
      await launch(_emailLaunchUri.toString()); // Buka email
    } else {
      throw 'Could not launch $_emailLaunchUri'; // Jika tidak dapat membuka email, lemparkan pesan kesalahan
    }
  }
}
