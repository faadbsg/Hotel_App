import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_hotels/colors.dart';
import 'package:ui_hotels/hotel_card.dart';

class HotelSection extends StatelessWidget {
  HotelSection({Key? key}) : super(key: key);
  final List hotelList = [
    {
      'title': 'Pullman Kinsha',
      'place': 'Bangkok, Thaïlande',
      'distance': '2',
      'review': '34',
      'picture': "assets/images/hotel_1.jpg",
      'price': '160',
    },
    {
      'title': 'Khon Kaï',
      'place': 'Phuket, Thaïlande',
      'distance': '7',
      'review': '46',
      'picture': "assets/images/hotel_2.jpg",
      'price': '80',
    },
    {
      'title': 'Paradise Hotel',
      'place': 'Chiang Mai, Thaïlande',
      'distance': '13',
      'review': '18',
      'picture': "assets/images/hotel_3.jpg",
      'price': '75',
    },
    {
      'title': 'Hilton Hotel',
      'place': 'Ayutthaya, Thaïlande',
      'distance': '25',
      'review': '180',
      'picture': "assets/images/hotel_4.jpg",
      'price': '130',
    },
    {
      'title': 'Baggyty',
      'place': 'Pattaya, Thaïlande',
      'distance': '36',
      'review': '100',
      'picture': "assets/images/hotel_5.jpg",
      'price': '105',
    },
    {
      'title': 'Niam PaÏ',
      'place': 'Chiang Rai, Thaïlande',
      'distance': '40',
      'review': '91',
      'picture': "assets/images/hotel_6.jpeg",
      'price': '83',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '550 hotels founds',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Filters',
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.filter_list_outlined,
                        color: d_green,
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotelData: hotel);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
