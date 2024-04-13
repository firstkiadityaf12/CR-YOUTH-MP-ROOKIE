import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:milestone_4/app/theme/color.dart';

import '../../../widget/card_movie.dart';
import '../controllers/search_page_controller.dart';

class SearchPageView extends GetView<SearchPageController> {
  const SearchPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: white,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Search',
              style: TextStyle(
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              cursorColor: primaryColor,
              keyboardType: TextInputType.text,
              autocorrect: false,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF3A3F47),
                  ),
                ),
                fillColor: Color(0xFF3A3F47),
                filled: true,
                hintText: 'Spiderman',
                hintStyle: TextStyle(
                  color: white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: greyDark,
                ),
              ),
            ),
            CardMovie()
          ],
        ),
      ),
    );
  }
}
