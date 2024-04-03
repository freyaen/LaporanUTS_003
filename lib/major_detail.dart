import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';
import 'Major.dart';

class MajorDetail extends StatefulWidget {
  final Major major;

  const MajorDetail({Key? key, required this.major}) : super(key: key);

  @override
  _MajorDetailState createState() => _MajorDetailState();
}

class _MajorDetailState extends State<MajorDetail> {
  bool _isVisiExpanded = false;
  bool _isMisiExpanded = false;
  bool _isAkreditasiExpanded = false;
  bool _isKetuaExpanded = false;
  bool _isDosenExpanded = false;
  bool _isPrestasiExpanded = false;
  bool _isWebsiteExpanded = false;
  bool _isEmailproExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/baground_fakultas.jpg'), // Ganti dengan path gambar latar belakang Anda
                    fit: BoxFit.cover,
                  ),
                ),
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    AppBar(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      title: Text(
                        widget.major.label,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(widget.major.imageUrl),
                        radius: 50,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '${widget.major.label}', // Menggunakan properti label dari objek widget.major
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Visi:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //
                    ListTile(
                      //title: Text(
                      //widget.major.vision,
                      //),
                      trailing: SizedBox(
                        height: 24, // Sesuaikan dengan tinggi tile Anda
                        child: IconButton(
                          icon: Icon(_isVisiExpanded
                              ? Icons.expand_less
                              : Icons.expand_more),
                          onPressed: () {
                            setState(() {
                              _isVisiExpanded = !_isVisiExpanded;
                            });
                          },
                        ),
                      ),
                    ),

                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isVisiExpanded ? null : 0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            child: Center(
                              child: Text(
                                widget.major.vision,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Misi:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      //title: Text(
                      // widget.major.mission,
                      //),
                      trailing: IconButton(
                        icon: Icon(_isMisiExpanded
                            ? Icons.expand_less
                            : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _isMisiExpanded = !_isMisiExpanded;
                          });
                        },
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isMisiExpanded ? null : 0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            child: Center(
                              child: Text(
                                widget.major.mission,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Akreditasi:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      //title: Text(
                      // widget.major.akreditas,
                      //),
                      trailing: IconButton(
                        icon: Icon(_isAkreditasiExpanded
                            ? Icons.expand_less
                            : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _isAkreditasiExpanded = !_isAkreditasiExpanded;
                          });
                        },
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isAkreditasiExpanded ? null : 0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            child: Center(
                              child: Text(
                                widget.major.akreditas,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Ketua Program Studi:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      trailing: IconButton(
                        icon: Icon(_isKetuaExpanded
                            ? Icons.expand_less
                            : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _isKetuaExpanded = !_isKetuaExpanded;
                          });
                        },
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isKetuaExpanded ? null : 0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            child: Center(
                              child: Text(
                                widget.major.ketua,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Dosen:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      trailing: IconButton(
                        icon: Icon(_isDosenExpanded
                            ? Icons.expand_less
                            : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _isDosenExpanded = !_isDosenExpanded;
                          });
                        },
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isDosenExpanded ? null : 0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 4.0,
                            ),
                            child: Center(
                              child: Text(
                                widget.major.dosen,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Website:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      trailing: IconButton(
                        icon: Icon(_isWebsiteExpanded
                            ? Icons.expand_less
                            : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _isWebsiteExpanded = !_isWebsiteExpanded;
                          });
                        },
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isWebsiteExpanded ? null : 0,
                      child: Card(
                        child: InkWell(
                          onTap: () {
                            _launchURL(widget.major.website);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 4.0,
                              ),
                              child: Center(
                                child: Text(
                                  widget.major.website,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Email Program Studi:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      trailing: IconButton(
                        icon: Icon(_isEmailproExpanded
                            ? Icons.expand_less
                            : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _isEmailproExpanded = !_isEmailproExpanded;
                          });
                        },
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isEmailproExpanded ? null : 0,
                      child: Card(
                        child: InkWell(
                          onTap: () {
                            _launchEmail(widget.major.Emailpro);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 4.0,
                              ),
                              child: Center(
                                child: Text(
                                  widget.major.Emailpro,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Prestasi:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ListTile(
                      //title: Text(
                      //  widget.major.prestasi,
                      //),
                      trailing: IconButton(
                        icon: Icon(_isPrestasiExpanded
                            ? Icons.expand_less
                            : Icons.expand_more),
                        onPressed: () {
                          setState(() {
                            _isPrestasiExpanded = !_isPrestasiExpanded;
                          });
                        },
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: _isPrestasiExpanded ? null : 0,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 4.0,
                            ),
                            child: Center(
                              child: Text(
                                widget.major.prestasi,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Add more ListTiles for other information like head of department, etc.
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Function untuk membuka URL
_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url); // Buka URL jika dapat dilakukan
  } else {
    throw 'Could not launch $url'; // Tangani jika tidak dapat membuka URL
  }
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
