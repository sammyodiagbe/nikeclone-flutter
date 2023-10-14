import "package:flutter/material.dart";
import "package:nikeclone/components/userProfileComponent.dart";

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                top: 80,
                bottom: 20,
              ),
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                children: [
                  CircleAvatar(
                    minRadius: 50,
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.grey.shade400,
                    ),
                    backgroundColor: Colors.grey.shade200,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'SAMSON ODIAGBE',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 100,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 2,
                          color: Colors.grey.shade300,
                        )),
                    child: Center(
                      child: Text('EDIT PROFILE'),
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UserProfileLinkComponent(
                            label: "Orders",
                            iconData: Icons.request_page_outlined),
                        VerticalDivider(
                          thickness: 2,
                        ),
                        UserProfileLinkComponent(
                            label: "Pass",
                            iconData: Icons.request_page_outlined),
                        VerticalDivider(
                          thickness: 2,
                        ),
                        UserProfileLinkComponent(
                            label: "Events",
                            iconData: Icons.event_available_outlined),
                        VerticalDivider(
                          thickness: 2,
                        ),
                        UserProfileLinkComponent(
                            label: "Settings", iconData: Icons.settings)
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Inbox',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text('View Messages'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Your Member Reward'),
                    subtitle: Text('2 available'),
                    trailing: Icon(Icons.chevron_right),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Following(3)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Edit')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/home/home5.jpg"),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/home/home6.jpg"),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/home/home7.jpg"),
                        fit: BoxFit.cover,
                      )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
