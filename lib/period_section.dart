import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PeriodSection extends StatelessWidget {
  const PeriodSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Departure',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.nunito(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  'Mon 12 Dec',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: 1,
              color: Colors.grey[350],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Return',
                  style: GoogleFonts.nunito(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                const SizedBox(height: 4),
                Text(
                  'Thu 22 Dec',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
          ],
        ),
      ],
    );
  }
}
