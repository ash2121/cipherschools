// ignore_for_file: prefer_const_constructors

import 'package:cipherschools/constants/colors.dart';
import 'package:cipherschools/models/card_model.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final CardModel cardData;
  const CardWidget({super.key, required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          color: AppColors.greyText,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(cardData.imagePath),
                  radius: 28,
                ),
                Text(
                  "Free",
                  style: TextStyle(
                    color: AppColors.orange,
                    fontSize: 22,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              cardData.title,
              style: TextStyle(
                  color: AppColors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              cardData.description,
              style: TextStyle(
                color: AppColors.white.withOpacity(0.85),
                fontSize: 18,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
