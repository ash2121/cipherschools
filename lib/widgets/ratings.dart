import 'package:cipherschools/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
        left: 20,
        bottom: 26,
      ),
      child: Row(
        children: [
          Row(
            children: const [
              SingleAvatar(imagePath: "assets/images/user1.jpeg"),
              SingleAvatar(imagePath: "assets/images/user2.jpeg"),
              SingleAvatar(imagePath: "assets/images/user3.jpeg"),
            ],
          ),
          const SizedBox(
            width: 35,
          ),
          Column(
            children: const [
              Text(
                "50+",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Mentors",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 6,
          ),
          Container(
            height: 48,
            child: VerticalDivider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 2,
            ),
          ),
          Column(
            children: [
              const Text(
                "4.8/5",
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                height: 30,
                width: 140,
                child: const Image(
                  image: AssetImage(
                    "assets/images/ratings.png",
                  ),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SingleAvatar extends StatelessWidget {
  final String imagePath;
  const SingleAvatar({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      widthFactor: 0.5,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: AppColors.white,
        child: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 20,
        ),
      ),
    );
  }
}
