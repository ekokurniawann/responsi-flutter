import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 8.0, // Jarak antar kolom
          mainAxisSpacing: 8.0, // Jarak antar baris
          childAspectRatio: 2 / 1,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12), // Sudut melengkung
              border: Border.all(
                color:
                    const Color.fromARGB(255, 212, 200, 200).withOpacity(0.3),
                width: 0.8,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Center(
                      child: Image.asset(
                        'assets/space1.png',
                        width: 110,
                        height: 150,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Kost Bapak Ardani',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  // const SizedBox(height: 20),
                  const Spacer(),
                  Text(
                    '0.7 Km dari Anda',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.poppins(
                      fontSize: 9,
                      color: Colors.green,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Rp 600.000',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                        color: Colors.red,
                      ),
                      children: [
                        TextSpan(
                          text: ' / month',
                          style: GoogleFonts.poppins(
                            fontSize: 8,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
