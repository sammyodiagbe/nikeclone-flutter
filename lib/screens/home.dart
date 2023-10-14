import "package:flutter/material.dart";
import "package:nikeclone/components/homeItemComponent.dart";
import "package:nikeclone/components/homePageViewComponent.dart";
import "package:nikeclone/constants/textStyles.dart";

class Home extends StatelessWidget {
  Home({super.key});

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 28,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Text(
                'Good morning, Samson',
                style: introTextStyle,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 30),
              color: Colors.grey.shade50,
              child: PageView(
                controller: _pageController,
                physics: RangeMaintainingScrollPhysics(),
                children: [
                  PageViewComponent(
                    title: "Member Promotion",
                    subtitle:
                        "Get fave looks for less - as a Member you get ccess to...",
                    assetPath: "assets/home/home3.jpg",
                  ),
                  PageViewComponent(
                    title: "Your Member Benefits",
                    subtitle:
                        "The world of membershi awaits, tap to discover the best of Nike...",
                    assetPath: "assets/home/home6.jpg",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("New from Nike"),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View all',
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
            HomeItemComponent(
              productname: 'Air Jordan 3',
              subtitle: 'Responds to your every move',
              assetPath: 'assets/home/home1.jpeg',
            ),
            SizedBox(height: 5),
            HomeItemComponent(
              productname: 'Nike Dragon',
              subtitle: 'More balance than you can imagine.',
              assetPath: 'assets/home/home2.jpg',
            ),
            SizedBox(height: 5),
            HomeItemComponent(
              productname: 'Nike Sport bra',
              subtitle: 'Do you Effortlessly',
              assetPath: 'assets/home/home4.jpg',
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.black,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Stories that move you',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'View all',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 450,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/home/home7.jpg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Shoe magic.',
                          style: TextStyle(color: Colors.grey.shade100),
                        ),
                      ),
                      Text(
                        'Episode one: Grand Opening',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 280,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/home/home8.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Move to zero',
                                  style: TextStyle(color: Colors.grey.shade100),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Tips for clean kicks',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/home/home5.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Move to zero',
                                  style: TextStyle(
                                    color: Colors.grey.shade100,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Expanded(
                                  child: Text(
                                    'Weird is the new cool again and again',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 40,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  'View all',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
