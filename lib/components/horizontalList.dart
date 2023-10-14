import "package:flutter/material.dart";

class HorizontalListComponent extends StatelessWidget {
  final List<String> paths;
  const HorizontalListComponent({super.key, required this.paths});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(paths[index]), fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text('Product name')
              ],
            ),
          );
        },
        itemCount: paths.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
