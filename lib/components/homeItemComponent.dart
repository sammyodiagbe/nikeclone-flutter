import "package:flutter/material.dart";
import "package:nikeclone/constants/textStyles.dart";

class HomeItemComponent extends StatelessWidget {
  final String productname;
  final String subtitle;
  final String assetPath;
  const HomeItemComponent(
      {super.key,
      required this.productname,
      required this.subtitle,
      required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20, bottom: 20, right: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.3),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productname,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            subtitle.toUpperCase(),
            style: titleLarge,
          ),
          SizedBox(height: 15),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text('Shop now'),
            ),
          )
        ],
      ),
    );
  }
}
