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
      appBar: _buildAppBar(),
      bottomNavigationBar: _buildBottomNavigationBar(),
      body: SafeArea(child: Text('home screen')),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
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

  BottomNavigationBar _buildBottomNavigationBar() {
return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: footer,
    showSelectedLabels: false,
    showUnselectedLabels: false,
    items: [
      _footerBarItem(icon: "assets/svgs/footer_quran.svg", label: "quran"),
      _footerBarItem(icon: "assets/svgs/footer_lampu.svg", label: "Lampu"),
      _footerBarItem(icon: "assets/svgs/footer_orang_duduk.svg", label: "Icon Orang Duduk"),
      _footerBarItem(icon: "assets/svgs/footer_tangan_berdoa.svg", label: "Icon Tangan Berdoa"),
      _footerBarItem(icon: "assets/svgs/footer_simpan.svg", label: "Icon Simpan"),
    ],
  );
}

BottomNavigationBarItem _footerBarItem({required String icon, required String label}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(icon),
    label: label,
  );
}

}