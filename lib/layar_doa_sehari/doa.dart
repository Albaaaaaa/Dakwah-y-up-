import 'package:dakwah_y_up/bahan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaSehariPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doa Sehari-hari",
        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: stroke),),
      ),
      body: _PageList(
      ),
      backgroundColor: stroke,
    );
  }
}

class DoaSehari {
  final String nama;
  final String isi;
  final String arti;

  DoaSehari({required this.nama, required this.isi, required this.arti});
}

class DetailPage extends StatelessWidget {
  final DoaSehari doa;

  DetailPage({required this.doa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: latarbelakang,
      appBar: AppBar(
        backgroundColor: latarbelakang,
        title: Text(doa.nama,
        style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Doa:',
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            SizedBox(height: 8),
            Text(
              doa.isi,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(height: 16),
            SizedBox(height: 8),
            Text(
              doa.arti,
              style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: stroke),
            ),
          ],
        ),
      ),
    );
  }
}

class _PageList extends StatelessWidget {
  final List<DoaSehari> doaList = [
    DoaSehari(
    nama: "Doa sebelum makan",
    isi: "اَللّٰهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ",
    arti:
        "Artinya: Ya Allah, berkahilah kami dalam rezeki yang telah Engkau berikan kepada kami dan peliharalah kami dari siksa api neraka",
  ),
  DoaSehari(
    nama: "Doa setelah makan",
    isi: "اَلْحَمْدُ ِللهِ الَّذِىْ اَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِيْنَ",
    arti:
        "Artinya: Segala puji bagi Allah yang telah memberi makan kami dan minuman kami, serta menjadikan kami sebagai orang-orang islam",
  ),
  DoaSehari(
    nama: "Doa ketika makan lupa membaca doa",
    isi: "بِسْمِ اللهِ فِىِ أَوَّلِهِ وَآخِرِهِ",
    arti: "Artinya: Dengan menyebut nama Allah pada awal dan akhirnya",
  ),
  DoaSehari(
    nama: "Doa sebelum tidur",
    isi: "بِسْمِكَ الللّٰهُمَّ اَحْيَا وَاَمُوْتُ",
    arti: "Artinya: Dengan menyebut nama-Mu ya Allah, aku hidup dan aku mati",
  ),
  DoaSehari(
    nama: "Doa bangun tidur",
    isi: "اَلْحَمْدُ ِللهِ الَّذِىْ اَحْيَانَا بَعْدَمَآ اَمَاتَنَا وَاِلَيْهِ النُّشُوْرُ",
    arti:
        "Artinya: Segala puji bagi Allah yang telah menghidupkan kami sesudah kami mati (membangunkan dari tidur) dan hanya kepada-Nya kami dikembalikan",
  ),
  DoaSehari(
    nama: "Doa ketika mendapat mimpi buruk",
    isi: "اَللّٰهُمَّ إِنّىِ أَعُوْذُ بِكَ مِنْ عَمَلِ الشَّيْطَانِ وَسَيِّئاَتِ اْلأَحْلاَمِ",
    arti: "Artinya: Ya Allah, aku berlindung kepada-Mu dari perbuatan setan dan mimpi-mimpi buruk",
  ),
  DoaSehari(
    nama: "Doa ketika mendapat mimpi baik",
    isi: "اَلْحَمْدُ ِللهِ الَّذِيْ قَطْلَ الْحَاجَتِ",
    arti: "Artinya: Segala puji bagi Allah yang telah memenuhi hajatku",
  ),
  DoaSehari(
  nama: "Doa masuk kamar mandi atau toilet",
  isi: "اَللّٰهُمَّ كَمَا حَسَّنْتَ خَلْقِىْ فَحَسِّـنْ خُلُقِىْ",
  arti: "Artinya: Ya Allah, sebagaimana Engkau telah menciptakan tubuhku dengan baik, maka sempurnakanlah akhlakku",
),
DoaSehari(
  nama: "Doa keluar kamar mandi atau toilet",
  isi: "غُفْرَانَكَ الْحَمْدُ ِللهِ الَّذِىْ اَذْهَبَ عَنّى اْلاَذَى وَعَافَانِىْ",
  arti: "Artinya: Dengan menyebut namaMu ya Allah, aku berlindung kepadaMu dari kejahatan yang ada pada diriku",
),
DoaSehari(
  nama: "Doa istinja",
  isi: "غُفْرَانَكَ الْحَمْدُ ِللهِ الَّذِىْ اَذْهَبَ عَنّى اْلاَذَى وَعَافَانِىْ",
  arti: "Artinya: Dengan menyebut namaMu ya Allah, aku berlindung kepadaMu dari kejahatan yang ada pada diriku",
),
DoaSehari(
  nama: "Doa menjelang sholat subuh",
  isi: "اَللّٰهُمَّ طَهِّرُ قَلْبِىْ مِنَ النِّفَاقِ وَحَصِّنْ فَرْخِىْ مِنَ الْفَوَاحِشِ",
  arti: "Artinya: Ya Allah, sucikanlah hatiku dari sifat kepura-puraan (munafiq) serta peliharalah kemaluanku dari perbuatan keji",
),
DoaSehari(
  nama: "Doa menyambut pagi hari",
  isi: "اَللّٰهُمَّ اِنّىْ اَعُوْذُبِكَ مِنْ ضِيْقِ الدُّنْيَا وَضِيْقِ يَوْمِ الْقِيَامَةِ",
  arti: "Artinya: Ya Allah, sesungguhnya aku berlindung kepada-Mu dari kesempitan dunia dan kesempitan hari kiamat",
),
DoaSehari(
  nama: "Doa menyambut sore hari",
  isi: "اَللّٰهُمَّ بِكَ اَمْسَيْنَا وَبِكَ اَصْبَحْنَا وَبِكَ نَحْيَا وَبِكَ نَمُوْتُ وَاِلَيْكَ الْمَصِيْرُ",
  arti: "Artinya: Ya Allah, karena Engkau kami mengalami waktu petang dan waktu pagi, karena Engkau kami hidup dan mati dan kepada-Mu juga kami akan kembali",
),
DoaSehari(
  nama: "Doa ketika becermin",
  isi: "اَلْحَمْدُ ِللهِ كَمَا حَسَّنْتَ خَلْقِىْ  فَحَسِّـنْ خُلُقِىْ",
  arti: "Artinya: Segala puji bagi Allah, baguskanlah budi pekertiku sebagaimana Engkau telah membaguskan rupa wajahku",
),
DoaSehari(
  nama: "Doa masuk rumah",
  isi: "بِسْمِ اللهِ الَّذِىْ لاَ اِلَهَ اِلاَّ هُوَ",
  arti: "Artinya: Dengan menyebut nama Allah yang tiada Tuhan selain-Nya",
),
DoaSehari(
  nama: "Doa keluar rumah",
  isi: "بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ لاَحَوْلَ وَلاَقُوَّةَ اِلاَّ بِالله",
  arti: "Artinya: Dengan nama Allah aku bertawakal kepada Allah, tiada daya kekuatan melainkan dengan pertologan Allah",
),
DoaSehari(
  nama: "Doa memakai pakaian baru",
  isi: "بِسْمِ اللهِ الَّذِى لاَ اِلَهَ اِلاَّ هُوَ",
  arti: "Artinya: Dengan menyebut nama Allah yang tiada Tuhan selain-Nya",
),
DoaSehari(
  nama: "Doa melepas pakaian",
  isi: "اَلْحَمْدُ لِلّٰهِ الَّذِى كَسَانِىْ هَذَا وَرَزَقَنِيْهِ مِنْ غَيْرِ حَوْلٍ مِنِّىْ وَلاَقُوَّةٍ",
  arti: "Artinya: Segala puji bagi Allah yang memberi aku pakaian ini dan memberi rezeki dengan tiada daya dan kekuatan dariku",
),
DoaSehari(
  nama: "Doa memohon ilmu yang bermanfaat",
  isi: "اَللّٰهُمَّ اجْعَلْ فِىْ قَلْبِى نُوْرًا وَفِى لِسَانِىْ نُوْرًا وَفِىْ بَصَرِىْ نُوْرًا وَفِىْ سَمْعِىْ نُوْرًا وَعَنْ يَسَارِىْ نُوْرًا وَعَنْ يَمِيْنِىْ نُوْرًا وَفَوْقِىْ نُوْرًا وَتَحْتِىْ نُوْرًا وَاَمَامِىْ نُوْرًا وَخَلْفِىْ نُوْرًا وَاجْعَلْ لِّىْ نُوْرً",
  arti: "Artinya: Ya Allah, jadikanlah di hatiku cahaya, pada lisanku cahaya, dipandanganku cahaya, dalam pendengaranku cahaya, dari kananku cahaya, dari kiriku cahaya, dari atas ku cahaya, dari bawahku cahaya, dari depanku cahaya, belakangku cahaya, dan jadikanlah untukku cahaya",
),
DoaSehari(
  nama: "Doa sebelum belajar",
  isi: "اَللّٰهُمَّ افْتَحْ عَلَىَّ حِكْمَتَكَ وَانْشُرْ عَلَىَّ رَحْمَتَكَ وَذَكِّرْنِىْ مَانَسِيْتُ يَاذَاالْجَلاَلِ وَاْلاِكْرَامِاَللّٰهُمَّ ارْحَمْنِىْ بِالْقُرْآنِ. وَاجْعَلْهُ لِىْ اِمَامًا وَنُوْرًا وَّهُدًى وَّرَحْمَةً. اَللّٰهُمَّ ذَكِّرْنِىْ مِنْهُ مَانَسِيْتُ وَعَلِّمْنِىْ مِنْهُ مَاجَهِلْتُ. وَارْزُقْنِىْ تِلاَ وَتَهُ آنَآءَ اللَّيْلِ وَاَطْرَافَ النَّهَارٍ.وَاجْعَلْهُ لِىْ حُجَّةً يَارَبَّ الْعَالَمِيْنَ",
  arti: "Artinya: Ya Allah, bukakanlah atas diriku hikmat-Mu dan hamparkanlah rahmat-Mu kepadaku, dan ingatkanlah aku terhadap apa yang telah aku lupakan, wahai Tuhan yang memiliki keagungan dan kemuliaan. Ya Allah, berilah rahmat kepada aku dengan Al-Quran, jadikanlah Al-Quran itu bagiku pemimpin, cahaya, petunjuk, dan rahmat. Ya Allah, ingatkanlah aku akan Al-Quran yang telah aku lupakan, ajarkanlah aku dari Al-Quran apa yang belum aku ketahui, dan karuniakanlah aku membaca dan memahami Al-Quran pada waktu malam dan siang. Dan jadikanlah Al-Quran itu sebagai hujjah bagiku, wahai Tuhan seru sekalian alam",
),
DoaSehari(
  nama: "Doa setelah belajar",
  isi: "اَللّٰهُمَّ يَارَبَّ الْعَالَمِيْنَ آتِنِىْ فِى الدُّنْيَا حَسَنَةً وَّفِى الآخِرَةِ حَسَنَةً وَّقِنِىْ عَذَابَ النَّارِ",
  arti: "Artinya: Ya Allah, wahai Tuhan seru sekalian alam, berilah aku kebaikan di dunia dan kebaikan di akhirat dan peliharalah aku dari siksa api neraka",
),
DoaSehari(
  nama: "Doa bepergian",
  isi: "اَللّٰهُمَّ سُبْحَانَ الَّذِىْ سَخَّرَلَنَا هَذَا وَمَاكُنَّالَهُ مُقْرِنِيْنَ وَاِنَّآ اِلَى رَبِّنَا لَمُنْقَلِبُوْنَ",
  arti: "Artinya: Maha suci Allah yang telah menundukkan untuk kami (kendaraan) ini. padahal sebelumnya kami tidak mampu untuk menguasainya, dan hanya kepada-Mu lah kami akan kembali",
),
DoaSehari(
  nama: "Doa naik kendaraan",
  isi: "بِسْمِ اللهِ مَجْرَهَا وَمُرْسَهَآاِنَّ رَبِّىْ لَغَفُوْرٌرَّحِيْمٌ",
  arti: "Artinya: Dengan menyebut nama Allah yang menjalankan kendaraan ini berlayar dan berlabuh, sesungguhnya Tuhanku benar-benar Maha Pengampun lagi Maha Penyayang",
),
DoaSehari(
  nama: "Doa naik kapal",
  isi: "اَلْحَمْدُ ِللهِ الَّذِى سَلَمَنِى وَالَّذِى اَوَنِى وَالَّذِى جَمَعَ الشَّمْلَ بِ",
  arti: "Artinya: Segala puji bagi Allah, yang telah menyelamatkan aku dan yang telah melindungiku dan yang mengumpulkanku dengan keluargaku",
),
DoaSehari(
  nama: "Doa ketika sampai tempat tujuan",
  isi: "اَللّٰهُمَّ اجْعَلْنَا مِنَ الْمُسْتَوْدِعِيْنَ وَاجْعَلْنَا مِنَ الْمُسْتَوْدَعِيْنَ",
  arti: "Artinya: Ya Allah, jadikanlah kami dari mereka yang dipercayai dan jadikanlah kami dari mereka yang menepati kepercayaan",
),
DoaSehari(
  nama: "Doa ketika menuju masjid",
  isi: "اَللّٰهُمَّ وَفِّقْنِىْ لِزِيَارَةِ قَبْرِالنَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ",
  arti: "Artinya: Ya Allah, berilah aku keberuntungan untuk mengunjungi kuburan Nabi Muhammad SAW",
),
DoaSehari(
  nama: "Doa masuk masjid",
  isi: "اَللّٰهُمَّ افْتَحْ لِىْ اَبْوَابَ رَحْمَتِكَ",
  arti: "Artinya: Ya Allah, bukakanlah untukku pintu-pintu rahmat-Mu",
),
DoaSehari(
  nama: "Doa keluar masjid",
  isi: "اَللّٰهُمَّ اِنِّى اَسْأَلُكَ مِنْ فَضْلِكَ",
  arti: "Artinya: Ya Allah, sesungguhnya aku memohon keutamaan dari-Mu",
),
DoaSehari(
  nama: "Doa akan membaca Al Quran",
  isi: "اَللّٰهُمَّ افْتَحْ عَلَيَّ حِكْمَتَكَ وَانْشُرْ عَلَيَّ رَحْمَتَكَ وَذَكِّرْنِىْ مَانَسِيْتُ يَاذَاالْجَلاَلِ وَالإِكْرَامِ اَللّٰهُمَّ ارْحَمْنِيْ بِالْقُرْآنِ وَاجْعَلْهُ لِىْ اِمَامًا وَنُوْرًا وَّهُدًى وَّرَحْمَةً، اَللّٰهُمَّ ذَكِّرْنِيْ مِنْهُ مَا نَسِيْتُ وَعَلِّمْنِيْ مِنْهُ مَا جَهِلْتُ",
  arti: "Artinya: Ya Allah, bukakanlah atas diriku hikmat-Mu dan hamparkanlah rahmat-Mu kepadaku, dan ingatkanlah aku terhadap apa yang telah aku lupakan, wahai Tuhan yang memiliki keagungan dan kemuliaan. Ya Allah, berilah rahmat kepada aku dengan Al-Quran, jadikanlah Al-Quran itu bagiku pemimpin, cahaya, petunjuk, dan rahmat. Ya Allah, ingatkanlah aku akan Al-Quran yang telah aku lupakan, ajarkanlah aku dari Al-Quran apa yang belum aku ketahui",
),
DoaSehari(
  nama: "Doa setelah membaca Al Quran",
  isi: "اللَّهُمَّ اجْعَلْهُ لِي عُهْداً وَّذِكْراً وَهُدًى وَرَحْمَةً، اللَّهُمَّ ذَكِّرْنِي مِنْهُ مَا نَسِيتُ وَعَلِّمْنِي مِنْهُ مَا جَهِلْتُ",
  arti: "Artinya: Ya Allah, jadikanlah Al-Quran ini sebagai penjamin bagiku, sebagai pengingat, petunjuk, dan rahmat. Ya Allah, ingatkanlah aku akan apa yang aku lupakan darinya, dan ajarkanlah aku dari Al-Quran apa yang belum aku ketahui",
),
DoaSehari(
  nama: "Doa ketika hujan",
  isi: "اللَّهُمَّ صَيِّبًا نَافِعًا",
  arti: "Artinya: Ya Allah, turunkanlah hujan yang bermanfaat bagi kami",
),
DoaSehari(
  nama: "Doa ketika melihat awan gelap",
  isi: "اَللَّهُمَّ زِدْ وَبَارِكْ، اللَّهُمَّ اغِثْنَا",
  arti: "Artinya: Ya Allah, tambahkanlah dan berkahilah, Ya Allah, turunkanlah hujan pada kami",
),
DoaSehari(
  nama: "Doa ketika angin kencang",
  isi: "اللَّهُمَّ اَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ تَبَارَكْتَ يَاذَا الْجَلَالِ وَاْلإِكْرَامِ",
  arti: "Artinya: Ya Allah, Engkaulah yang memberi keselamatan, dan dari-Mu keselamatan, Maha Suci Engkau, wahai Tuhan yang memiliki keagungan dan kemuliaan",
),
DoaSehari(
  nama: "Doa ketika mendengar petir",
  isi: "اَعُوْذُ بِعَزَّةِ اللهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا اَرَى وَاَسْمَعُ",
  arti: "Artinya: Aku berlindung dengan keperkasaan Allah dari keburukan apa yang aku lihat dan aku dengar",
),
DoaSehari(
  nama: "Doa ketika melihat kilat",
  isi: "سُبْحَانَ الَّذِىْ يُسَبِّحُ الرَّعْدُ بِحَمْدِهِ وَالْمَلَائِكَةُ مِنْ خِيْفَتِهِ",
  arti: "Artinya: Maha suci Allah yang kilat bertasbih dengan pujian-Nya, dan para malaikat karena takut kepada-Nya",
),
DoaSehari(
  nama: "Doa masuk rumah",
  isi: "بِسْمِ اللهِ وَلَجْنَا وَبِسْمِ اللهِ خَرَجْنَا وَعَلَى اللهِ رَبِّنَا تَوَكَّلْنَا",
  arti: "Artinya: Dengan menyebut nama Allah kami masuk, dan dengan menyebut nama Allah kami keluar, dan kepada Allah Tuhan kami, kami bertawakal",
),
DoaSehari(
  nama: "Doa keluar rumah",
  isi: "بِسْمِ اللهِ تَوَكَّلْتُ عَلَى اللهِ وَلَا حَوْلَ وَلَا قُوَّةَ اِلَّا بِالله",
  arti: "Artinya: Dengan menyebut nama Allah, aku bertawakal kepada Allah, tidak ada daya dan kekuatan kecuali dengan pertolongan Allah",
),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doaList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(doa: doaList[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Color.fromARGB(255, 3, 12, 70)),
              ),
              padding: EdgeInsets.all(16.0),
              child: Text(
                doaList[index].nama.toUpperCase(),
                style: GoogleFonts.poppins(fontSize: 18.0, color: Colors.black),
              ),
            ),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: DoaSehariPage(),
  ));
}
