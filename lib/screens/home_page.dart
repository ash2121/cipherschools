import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cipherschools/constants/colors.dart';
import 'package:cipherschools/models/card_model.dart';
import 'package:cipherschools/widgets/card_widget.dart';
import 'package:cipherschools/widgets/ratings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<CardModel> cardData = [
    CardModel(
      title: "Earn CipherPoints",
      imagePath: "assets/images/icon1.png",
      description: "Earn exclusive rewards by working with us!",
    ),
    CardModel(
      title: "Projects",
      imagePath: "assets/images/icon2.png",
      description: "Get hands-on experience with real life projects!",
    ),
    CardModel(
      title: "Mentors",
      imagePath: "assets/images/icon3.png",
      description: "Start learning from mentors from FAANG",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(
            left: 8,
            right: 5,
          ),
          // padding: const EdgeInsets.all(5),
          child: Image.asset(
            "assets/images/logo.png",
            fit: BoxFit.contain,
          ),
        ),
        title: const Text("CipherSchools"),
      ),
      endDrawer: const Drawer(backgroundColor: AppColors.black),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 28,
                bottom: 10,
                left: 12,
                right: 12,
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 40,
                  ),
                  children: [
                    TextSpan(text: "Welcome to "),
                    TextSpan(
                      text: "the Future ",
                      style: TextStyle(
                        color: AppColors.orange,
                      ),
                    ),
                    TextSpan(
                      text: "of Learning!",
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedTextKit(
                repeatForever: true,
                displayFullTextOnTap: true,
                animatedTexts: [
                  TyperAnimatedText(
                    "Start learning by best creators for absolutely free!",
                    textAlign: TextAlign.center,
                    textStyle: const TextStyle(
                      color: AppColors.greyText,
                      fontSize: 24,
                    ),
                    speed: const Duration(
                      milliseconds: 80,
                    ),
                  ),
                ],
              ),
            ),
            const Rating(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orange,
                padding: const EdgeInsets.all(14),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Start Learning now",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.forward,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: CarouselSlider.builder(
                itemCount: cardData.length,
                itemBuilder: (context, index, realIndex) {
                  return CardWidget(cardData: cardData[index]);
                },
                options: CarouselOptions(
                  autoPlay: true,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
