import "package:flutter/material.dart";
import "package:nikeclone/components/horizontalList.dart";

class ShopScreen extends StatelessWidget {
  ShopScreen({super.key});
  List<String> paths = [
    "assets/shoes/shoe3.webp",
    "assets/jerseys/jersey2.webp",
    "assets/cloths/shop4.webp",
    "assets/shoes/shoe5.webp",
    "assets/jerseys/jersey7.webp",
    "assets/shoes/shoe7.webp",
    "assets/shoes/shoe3.webp",
  ];
  List<String> jerseyPaths = [
    "assets/jerseys/jersey1.webp",
    "assets/jerseys/jersey2.webp",
    "assets/jerseys/jersey3.webp",
    "assets/jerseys/jersey4.webp",
    "assets/jerseys/jersey5.webp",
    "assets/jerseys/jersey2.webp",
    "assets/jerseys/jersey7.webp",
  ];
  List<String> shoesPath = [
    "assets/shoes/shoe1.webp",
    "assets/shoes/shoe2.webp",
    "assets/shoes/shoe3.webp",
    "assets/shoes/shoe4.webp",
    "assets/shoes/shoe5.webp",
    "assets/shoes/shoe6.webp",
    "assets/shoes/shoe7.webp",
  ];
  List<String> clothsPaths = [
    "assets/cloths/shop1.webp",
    "assets/cloths/shop2.webp",
    "assets/cloths/shop3.webp",
    "assets/cloths/shop4.webp",
    "assets/cloths/shop5.webp",
    "assets/cloths/shop6.webp",
    "assets/cloths/shop7.webp",
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton.outlined(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 32,
                ))
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Shop',
                style: TextStyle(fontSize: 19),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(right: 20),
              child: TabBar(
                tabs: [
                  Tab(
                    text: "Men",
                  ),
                  Tab(
                    text: "Women",
                  ),
                  Tab(
                    text: "Kids",
                  ),
                  Tab(
                    text: "Jordan",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                height: 400,
                child: TabBarView(children: [
                  TabContentComponent(
                      paths: paths,
                      jerseyPaths: jerseyPaths,
                      shoesPath: shoesPath,
                      clothsPaths: clothsPaths),
                  TabContentComponent(
                      paths: paths,
                      jerseyPaths: jerseyPaths,
                      shoesPath: shoesPath,
                      clothsPaths: clothsPaths),
                  TabContentComponent(
                      paths: paths,
                      jerseyPaths: jerseyPaths,
                      shoesPath: shoesPath,
                      clothsPaths: clothsPaths),
                  TabContentComponent(
                      paths: paths,
                      jerseyPaths: jerseyPaths,
                      shoesPath: shoesPath,
                      clothsPaths: clothsPaths),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TabContentComponent extends StatelessWidget {
  const TabContentComponent({
    super.key,
    required this.paths,
    required this.jerseyPaths,
    required this.shoesPath,
    required this.clothsPaths,
  });

  final List<String> paths;
  final List<String> jerseyPaths;
  final List<String> shoesPath;
  final List<String> clothsPaths;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Must have, Best Sellers"),
            SizedBox(
              height: 10,
            ),
            HorizontalListComponent(paths: paths),
            SizedBox(
              height: 20,
            ),
            Text("Cloths"),
            SizedBox(height: 10),
            HorizontalListComponent(paths: jerseyPaths),
            SizedBox(
              height: 20,
            ),
            Text("Shoes"),
            SizedBox(height: 10),
            HorizontalListComponent(paths: shoesPath),
            SizedBox(
              height: 20,
            ),
            Text("Jerseys"),
            SizedBox(height: 10),
            HorizontalListComponent(paths: clothsPaths),
          ],
        ),
      ),
    );
  }
}
