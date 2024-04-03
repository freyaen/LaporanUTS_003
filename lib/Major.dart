class Major {
  String label;
  String tittle;
  String imageUrl;
  String vision; // Menambahkan variabel untuk visi
  String akreditas; // Menambahkan variabel untuk akreditasi
  String mission;
  String ketua;
  String dosen;
  String website;
  String Emailpro;
  String prestasi;

  Major(
      this.label,
      this.tittle,
      this.imageUrl,
      this.vision,
      this.mission,
      this.akreditas,
      this.ketua,
      this.dosen,
      this.website,
      this.Emailpro,
      this.prestasi);

  static List<Major> samples = [
    Major(
      'Teknik Kimia',
      'Teknik Kimia',
      'assets/Kimia.png',
      'Menjadi Program Studi yang unggul dalam IPTEK di bidang Teknik Kimia yang berkarakter bela negara.', // Menambahkan visi
      'Untuk mewujudkan visi tersebut maka Misi yang dilaksanakan Program Studi Teknik Kimia saat ini adalah:\n'
          '1. Menyelenggarakan proses pendidikan dan pengajaran yang berkompetensi, berwawasan technopreneur dan berkarakter bela negara;\n'
          '2. Menyelenggarakan kegiatan penelitian dasar dan terapan, khususnya di bidang pengelolaan sumber daya alam, energi yang berwawasan lingkungan;\n'
          '3. Menyelenggarakan kegiatan pengabdian kepada masyarakat melalui penerapan iptek;\n'
          '4. Menyelenggarakan tata kelola program studi yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran dan ;\n'
          '5. Mengembangkan kualitas tenaga pengajar, tenaga kependidikan unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan , dan manajerial;\n'
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana kegiatan proses belajar mengajar, laboratorium dasar dan, laboratorium profesional.\n'
          '7. Menyelenggarakan kerjasama dengan pemerintah, industri, lembaga pendidikan dan penelitian, termasuk luar negeri.',
      'A',
      'Nama:Dr. Ir. Sintha Soraya Santi, MT\n'
          'NIP : 19660621 199203 2 001\n'
          'Pangkat / Gol : Pembina / IV a\n'
          'Jabatan Fungsional : Lektor\n',
      'Dosen: 1.  Prof. Dr. Ir. Sri Redjeki, M.T. (Jabatan : Guru Besar)\n '
          '2. Prof. Dr. Ir. Ni Ketut Sari, M.T. (Jabatan : Guru Besar)\n'
          '3. Dr. Ir. Srie Muljani, M.T. (Jabatan : Lektor Kepala)\n'
          '4. Dr. Ir. Sintha Soraya Santi, M.T. (Jabatan : Lektor / Koorprodi Teknik Kimia)\n'
          '5. Ir. Sutiyono, M.T. (Jabatan : Lektor Kepala)\n'
          '6. Ir. Mu’tasim Billah, M.T. (Jabatan : Lektor Kepala)\n'
          '7. Ir. Siswanto, M.S. (Jabatan : Lektor Kepala)\n'
          '8. Ir. Bambang Wahyudi, M.S. (Jabatan : Lektor Kepala)\n'
          '9. Ir. Isni Utami, M.T. (Jabatan : Lektor Kepala)\n'
          '10. Ir. Caecilia Pujiastuti, M.T. (Jabatan : Lektor Kepala)\n'
          '11.Ir. Kindriari Nurma Wahyusi, M.T. (Jabatan : Lektor Kepala)\n'
          '12.Ir. Lucky Indrati Utami, M.T. (Jabatan : Lektor Kepala)\n',
      'https://tekkimia.upnjatim.ac.id/',
      'tekkimia@upnjatim.ac.id/',
      'prestasi : 1. Bronze Medal (Lombok Essay Competition 3) ',
    ),
    Major(
      'Teknik Lingkungan',
      'Teknik Lingkungan',
      'assets/Lingkungan.jpg',
      'Menjadi Program Studi Teknik Lingkungan yang unggul, menghasilkan lulusan yang berdaya saing di bidang rekayasa dan manajemen lingkungan, dengan karakter bela negara.', // Contoh visi
      'Menghasilkan lulusan yang dapat berkarir secara professional di bidang Teknik Lingkungan dengan karakter bela negara, yang mampu bersaing dalam era global. Meliputi:\n'
          '1. Menguasai bekal dasar ilmu pengetahuan dan keterampilan, serta mampu menerapkannya untuk memecahkan masalah dalam pekerjaan pada bidang rekayasa dan manajemen lingkungan\n'
          '2. Kemampuan untuk terus mengembangkan keilmuan Teknik Lingkungan, serta mampu beradaptasi dan mengikuti perkembangan teknologi inovatif pada bidangnya\n'
          '3. Memiliki jiwa sosial, kebangsaan dan kepekaan terhadap kondisi lingkungan\n'
          '4. Memiliki kemampuan dan tanggung jawab untuk mengomunikasikan ide-ide baik lisan maupun tulisan, secara ilmiah, mampu mengambil inisiatif yang tepat dan memimpin kelompok kerja di bidang yang relevan.\n', // Contoh misi
      'Unggul',
      'ketua : Firra Rosariawari, S.T., M.T.\n'
          'NIP/NPT: 19750409 202121 2 004\n'
          'Jabatan Fungsional : Lektor\n',
      'dosen : 1. Prof. Euis Nurul Hidayah, MT., PhD. (Pofesor/Guru Besar)\n'
          '2. Prof. Dr. Ir. Novirina Hendrasarie, MT. (Profesor/Guru Besar)\n'
          '3. Raden Kokoh Haryo Putro ST., MT. (Kepala Laboratorium Riset dan Terapan)\n'
          '4. Aussie Amalia, ST., MSc. (Kepala Laboratorium Dasar)\n'
          '5. Dr. Ir. Munawar Ali, MT. (Lektor Kepala)\n'
          '6. Ir. Naniek Ratni Juliardi A.R, MKes. (Lektor Kepala)\n'
          '7. Ir. Tuhu Agung Rachmanto, MT. (Lektor Kepala)\n'
          '8. Dr. Okik Hendriyanto Cahyonugroho., ST., MT.Lektor Kepala)\n'
          '9. Ir. Yuliatin Ali S., MM. (Lektor)\n'
          '10. Ir. Yayok Suryo Purnomo, MS. (Lektor)\n',
      'https://teklingk.upnjatim.ac.id/',
      'teknik.lingkungan@upnjatim.ac.id/',
      'prestasi :\n'
          '1. Best Presentation PRISMA 10\n'
          '2. PROPOSAL PKM MAHASISWA TL - LOLOS SELEKSI UNIVERSITAS\n', // Akreditasi bisa diisi jika diperlukan
    ),
    Major(
      'Teknik Sipil',
      'Teknik Sipil',
      'assets/Sipil.jpeg',
      'Visi Program Studi Teknik Sipil adalah menjadi program studi yang unggul dalam pengembangan dan penerapan ilmu pengetahuan, teknologi (IPTEK) serta sumber daya manusia guna menumbuhkembangkan potensi daerah yang mampu bersaing dalam pasar bebas dan berkarakter bela negara.', // Contoh visi
      'Menyelenggarakan dan mengembangkan pendidikan di bidang teknik sipil berkarakter bela negara.\n'
          '1. Meningkatkan budaya riset dalam pengembangan bidang ilmu pengetahuan, dan teknologi (IPTEK) yang berdaya guna untuk kesejahteraan masyarakat.\n'
          '2. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\n'
          '3. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.\n'
          '4. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial\n'
          '5. Meningkatkan sistem pengelolaan sarana dan prasarana\n'
          '6. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri\n',
      'B',
      'ketua : Dr. Ir. Hendrata Wibisana, M.T\n'
          'Jabatan Fungsional : ',
      'dosen : 1. Ir. Wahyu Kartini, M.T. (Lektor Assistant Professor)\n'
          '2. Cintantya Budi Casita, S.T., M.T. (Asisten Ahli Assistant Professor)\n'
          '3. Dr. Ir. Made D. Astawa, M.T. (Lektor Kepala  Associate Professor)\n'
          '4. Sumaidi, S.T., M.T. (Lektor)\n'
          '5. Dr. Ir. Minarni Nur Trilita, M.T. (Asisten Ahli)\n '
          '6. Novie Handajani, S.T., M.T.(Lektor)\n'
          '7. Iwan Wahjudijanto, S.T., M.T. (Lektor)\n'
          '8. Ir. Siti Zainab, M.T. (Lektor)\n'
          '9. Ibnu Sholichin, S.T., M.T. (Lektor Kepala)\n',
      'https://teksipil.upnjatim.ac.id/',
      'tekniksipil_ft@upnjatim.ac.id/',
      'prestasi : 1. Juara 1 Pencak Silat (Athaillah Putra Setiawan)\n'
          '2. RUNNER UP POMPROV ',
    ),
    Major(
      'Teknologi Pangan',
      'Teknologi Pangan',
      'assets/Pangan.jpeg',
      'Menjadi Program Studi Teknologi Pangan yang berkualitas dibidang ilmu dan teknologi pangan yang berkarakter bela negara pada tahun 2024.', // Contoh visi
      '   1. Menyelenggarakan pendidikan dan pembelajaran berkualitas di bidang Teknologi berkarakter bela negara.\n'
          '2. Mengembangkan sumberdaya manusia yang berkualitas dalam bidang pendidikan, pengajaran, dan penelitian.\n'
          '3. Meningkatkan kualitas dan system pengolahan dan pengadaan sarana dan prasarana laboratorium.\n'
          '4. Menyelenggarakan kegiatan penelitian untuk pengembangan ilmu teknologi pangan melalui rekayasa pangan berbahan baku local.\n'
          '5. Menyelenggarakan tata kelola yang baik, sehat, bersih dan transparan dalam rangka mencapai akuntabilitas pengelolaan program studi.\n'
          '6. Menyelenggarakan kerjasama pendidikan, penelitian dan pengabdian kepada masyarakat dengan mitra baik nasional maupun internasional.',
      'B',
      'ketua : Dr. Rosida, S.TP, MP\n'
          'NIP : 197102192021212004\n'
          'Jabatan : Lektor\n',
      'dosen : 1. Dr. Ir. Sri Winarti, MP (Jabatan : Lektor Kepala)\n'
          '2. Dr. Dra. Jariyah, MP (Jabatan : Lektor Kepala)\n'
          '3. Dr. Dedin F. Rosida, S.TP M.Kes (Jabatan : Lektor)\n'
          '4. Dr. drh. Ratna Yulistiani, MP (Jabatan : Lektor)\n',
      'https://tekpangan.upnjatim.ac.id/',
      'tp@upnjatim.ac.id/',
      'prestasi: 1. Lolos seleksi pendanaan PKM',
    ),
    Major(
      'Teknik Mesin',
      'Teknik Mesin',
      'assets/Mesin.png',
      'Menjadi Program Studi Teknik Mesin Berkarakter Bela Negara', // Contoh visi
      'Menyelenggarakan dan mengembangkan pendidikan berkarakter bela negara untuk menghasilkan lulusan yang mampu mengaplikasikan keahlian dengan memanfaatkan IPTEK di bidang Teknik Mesin serta menumbuhkan inovasi untuk menunjang proses industrialisasi, teknologi Biomedik, serta siap menghadapi tantangan era revolusi industri 4.0.\n'
          '1. Meningkatkan budaya riset dalam pengembangan IPTEK bidang Teknik Mesin yang berdaya guna untuk kesejahteraan masyarakat.\n'
          '2. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal di bidang Teknik Mesin.\n'
          '3. Meningkatkan manajemen program studi dan pengelolaan sarana prasarana terpadu, guna bisa menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintahan dan swasta.\n',
      'Baik',
      'ketua : Dr.T.Ir. Luluk Edahwati, MT.\n'
          'NIP : 19640611 199203 2 001\n'
          'Jabatan : Koordinator Program Studi Teknik Mesin\n',
      'dosen: 1. Dr. Wahyu Dwi Lestari, S.Pd.,MT. (Jabatan : Dosen)\n'
          '2. Tria Puspa Sari, S.T., M.S. (Jabatan : Dosen)\n'
          '3. Ndaru Adyono, S.Si., M.T. (Jabatan : Dosen)\n'
          '4. Wiliandi Saputro, S.T., M.Eng. (Jabatan : Dosen)\n'
          '5. Ahmad Khairul Faizin, S.T., M.Sc. (Jabatan : Dosen)\n'
          '6. Radissa Dzaky Issafira, S.T., M.Sc. (Jabatan : Dosen)\n',
      'https://tekmesin.upnjatim.ac.id/',
      'teknik.mesin@upnjatim.ac.id/',
      'prestasi : - ',
    ),
    Major(
      'Teknik Fisika',
      'Teknik Fisika',
      'assets/Fisika.png',
      'MENJADI PROGRAM STUDI FISIKA UNGGUL BERKARAKTER BELA NEGARA', // Contoh visi
      'Menyelenggarakan dan mengembangkan pendidikan berkarakter bela negara;\n'
          'Meningkatkan budaya riset dalam pengembangan bidang IPTEK yang berdayaguna untuk kesejahteraan masyarakat;\n'
          'Menyelenggarakan pengabdian kepada masyarakat  berbasis riset dan kearifan lokal;\n'
          'Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran;\n'
          'Mengembangkankualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan, dan manajerial;\n'
          'Meningkatkan sistem pengelolaan sarana dan prasarana terpadu;\n'
          'Meningkatkan kerjasama institusional dengan stakeholders baik dalam dan luar negeri.\n',
      'Baik',
      'Nama: Dr. Dira Ernawati, S.T., M.T\n'
          'Jabatan: Lektor\n'
          'NIP: 19780602 202121 2003\n',
      'dosen : 1. Kusuma Wardhani Mas’udah, S.Si., M.Si. (Jabatan: Asisten Ahli)\n'
          '2. Primasari Cahya Wardhani, S.Si., M.Sc. (Jabatan: Tenaga Pengajar)\n'
          '3. Pardi Sampe Tola, S.Si., M.Si., Ph.D (Jabatan: Tenaga Pengajar)\n'
          '4. Dr. Nur Aini Fauziyah, S.Pd., M.Si (Jabatan: Lektor)\n',
      'https://fisika.upnjatim.ac.id/',
      'fisika@upnjatim.ac.id',
      'prestasi : - ',
    ),
  ];
}
