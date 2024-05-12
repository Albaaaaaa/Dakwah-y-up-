import 'package:dakwah_y_up/bahan.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: latarbelakang,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 208.0), // Adjust bottom padding as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Universitas Muhammadiyah Kalimantan Timur',
                  style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              SizedBox(height: 10.0),
              // Informasi untuk Mahasiswa 1
              buildMahasiswaInfo(
                'Mahasiswa 1',
                'assets/images/mahasiswa1.png', // Ubah path foto sesuai dengan nama yang Anda berikan
                'Nama : Naufal Rajwa Dwiyana Athallah',
                'NIM  : 2211102441136',
              ),
              SizedBox(height: 10.0),
              // Informasi untuk Mahasiswa 2
              buildMahasiswaInfo(
                'Mahasiswa 2',
                'assets/images/mahasiswa2.png', // Ubah path foto sesuai dengan nama yang Anda berikan
                'Nama : Edwin Abdul Salam',
                'NIM  : 2211102441138',
              ),
              SizedBox(height: 10.0),
              // Informasi untuk Mahasiswa 3
              buildMahasiswaInfo(
                'Mahasiswa 3',
                'assets/images/mahasiswa3.png', // Ubah path foto sesuai dengan nama yang Anda berikan
                'Nama : Muhammad Irsyadudin Islami',
                'NIM  : 2211102441128',
              ),
              SizedBox(height: 10.0),
              // Informasi untuk Mahasiswa 4
              buildMahasiswaInfo(
                'Mahasiswa 4',
                'assets/images/mahasiswa4.png', // Ubah path foto sesuai dengan nama yang Anda berikan
                'Nama : Muhammad Ulil Albab',
                'NIM  : 2211102441104',
              ),
              SizedBox(height: 10.0),
              Center(
                child: Text(
                  'Kelompok 14',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMahasiswaInfo(
      String title, String imagePath, String name, String description) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: stroke,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 14.0),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      description,
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
