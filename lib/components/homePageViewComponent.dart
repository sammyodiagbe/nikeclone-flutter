import "package:flutter/material.dart";

class PageViewComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final String assetPath;
  const PageViewComponent({
    super.key,
    required this.title,
    required this.subtitle,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(0, 0),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(assetPath),
              fit: BoxFit.cover,
            )),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: Text(
                      subtitle,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
