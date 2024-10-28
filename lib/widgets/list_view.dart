import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.vertical, // Vertical scroll direction
        itemCount: 3, // Number of items
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(
                vertical: 8.0), // Vertical space between items
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // Rounded corners
            ),
            elevation: 4, // Shadow effect
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
                        'assets/space1.png', // Change to your image path
                        width: double.infinity, // Full width
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
                  const SizedBox(height: 4), // Add spacing
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
