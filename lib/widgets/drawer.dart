import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 0.75 * (MediaQuery.of(context).size.width),
        backgroundColor: Color(0xFF2A2A2A),
        child: Container(
            child: ListView(
          padding: EdgeInsets.only(top: 70, left: 15, right: 15),
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 30.0,
                    backgroundImage:
                        AssetImage('lib/images/profile_photo.png')),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Divyansh Gupta',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 5, top: 5),
                        child: Text(
                          'Health Status: Good',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ))
                  ],
                )
              ],
            ),
            SizedBox(height: 50),
            Container(width: 288, child: Divider()),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.home_filled, color: Colors.white),
              title: Text("Home",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Container(
                width: 25.0, // Set the desired width
                height: 25.0, // Set the desired height
                child: Image.asset(
                  'lib/images/reports.png', // Replace with the actual path to your image
                  fit: BoxFit
                      .cover, // You can adjust the BoxFit property as needed
                ),
              ),
              title: Text("Reports",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              leading: Container(
                width: 30.0, // Set the desired width
                height: 30.0, // Set the desired height
                child: Image.asset(
                  'lib/images/predict_drawer.png',
                  // Replace with the actual path to your image
                  // You can adjust the BoxFit property as needed
                ),
              ),
              title: Text("Predict",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white),
              title: Text("Log Out",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              onTap: () {},
            ),
            SizedBox(height: 26),
            Container(width: 288, child: Divider()),
          ],
        )));
  }
}
