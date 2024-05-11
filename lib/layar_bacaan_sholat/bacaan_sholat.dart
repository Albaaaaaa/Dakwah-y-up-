import 'package:dakwah_y_up/bahan.dart';
import 'package:dakwah_y_up/layar_bacaan_sholat/detail_bacaan.dart';
import 'package:dakwah_y_up/layar_bacaan_sholat/detail_niat,.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Niat & Bacaan Shalat",
        style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold, color: stroke),),
      ),
      backgroundColor: latarbelakang,
      
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // changed
            children: [
              Expanded( // added
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NiatSholat()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_niat.png"),
                          height: 250, // modified
                          width: 250, // modified
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Niat Sholat",
                          style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold, color: stroke),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded( // added
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BacaanSholat()));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("assets/images/ic_doa.png"),
                          height: 250, // modified
                          width: 250, // modified
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Bacaan Sholat",
                          style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold, color: stroke),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
