import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsi_flutter/widgets/bottom_navbar_item.dart';
import 'package:responsi_flutter/widgets/grid_view.dart';
import 'package:responsi_flutter/widgets/list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Make _selectedIndex mutable

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update the selected index on tap
    });

    switch (index) {
      case 0:
        // This is the current page, so we don't need to navigate
        break;
      case 1:
        Navigator.pushNamed(context, '/account');
        break;
      case 2:
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/login',
          (Route<dynamic> route) => false,
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              const SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/iconprofile.png',
                      width: 48,
                      height: 48,
                    ),
                    const Spacer(),
                    Image.asset(
                      'assets/notifkasi.png',
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(width: 8),
                    Image.asset(
                      'assets/setting.png',
                      width: 48,
                      height: 48,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Guest',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Text(
                          'Kos Terdekat',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const GridViewWidget(),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          'Rekomendasi Kos',
                          style: GoogleFonts.poppins(
                            fontSize: 24,
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward),
                        ),
                      ],
                    ),
                    const ListViewWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - (2 * 20),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: BottomNavbarItem(
                icon: Icons.home,
                isActive: _selectedIndex == 0,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: BottomNavbarItem(
                icon: Icons.person,
                isActive: _selectedIndex == 1,
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: BottomNavbarItem(
                icon: Icons.logout,
                isActive: _selectedIndex == 2,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
