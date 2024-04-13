import 'package:flutter/material.dart';

import '../theme/color.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({
    super.key,
  });

  final String image;
  final String title;
  final String rate;
  final String iconRate;
  final String ticketIcon;
  final String ticket;
  final String date;
  final String dateIcon;
  final String duration;
  final String durationIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 120,
          width: 95,
        ),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Image.asset('assets/images/icons/star.png'),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '9.5',
                  style: TextStyle(
                    color: Color(0xFFFF8700),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/icons/ticket.png',
                  color: white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Action',
                  style: TextStyle(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/icons/date.png',
                  color: white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '2019',
                  style: TextStyle(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/icons/clock.png',
                  color: white,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '139 Minutes',
                  style: TextStyle(
                    color: white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
