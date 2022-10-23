import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_hotels/colors.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotelData;
  const HotelCard({Key? key, required this.hotelData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  hotelData['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite_outline_rounded,
                      color: d_green,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '\$' + hotelData['price'],
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: <Widget>[
                    const Icon(
                      Icons.place,
                      color: d_green,
                      size: 14.0,
                    ),
                    Text(
                      hotelData['distance'] + 'km from the city',
                      style: GoogleFonts.nunito(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  'per night',
                  style: GoogleFonts.nunito(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: <Widget>[
                Row(
                  children: const <Widget>[
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_rate,
                      color: d_green,
                      size: 14,
                    ),
                    Icon(
                      Icons.star_border,
                      color: d_green,
                      size: 14,
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Text(
                  hotelData['review'] + ' reviews',
                  style: GoogleFonts.nunito(
                    color: Colors.grey[500],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
