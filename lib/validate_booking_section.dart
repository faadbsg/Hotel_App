import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_hotels/colors.dart';

class ValidateBookingSection extends StatefulWidget {
  const ValidateBookingSection({Key? key}) : super(key: key);

  @override
  State<ValidateBookingSection> createState() => _ValidateBookingSectionState();
}

class _ValidateBookingSectionState extends State<ValidateBookingSection> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(45, 10, 10, 20),
          child: RadioListTile(
            activeColor: Colors.grey,
            title: Text(
              'Flexible with dates',
              style: GoogleFonts.nunito(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            value: _selected,
            groupValue: _selected,
            onChanged: (changed) {
              _selected = !_selected;
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            child: Text(
              'Apply',
              style: GoogleFonts.nunito(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 22,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
                primary: d_green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                )),
          ),
        )
      ],
    );
  }
}
