import 'package:dakwah_y_up/bahan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: latarbelakang,
      appBar: _appBar(),
      body: SafeArea(child: Text('home screen')),
    );
  }

  AppBar _appBar() => AppBar(
        backgroundColor: latarbelakang,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/navbar_menu_home.svg'),
            ),
            Text(
              "Dakwah'y up",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/pencarian_menu_home.svg'),
            ),
          ],
        ),
      );
}
