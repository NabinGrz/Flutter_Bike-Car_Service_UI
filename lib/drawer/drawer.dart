import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyDrawerUI();
  }
}

class MyDrawerUI extends StatefulWidget {
  const MyDrawerUI({Key? key}) : super(key: key);

  @override
  _MyDrawerUIState createState() => _MyDrawerUIState();
}

class _MyDrawerUIState extends State<MyDrawerUI> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Nabin Gurung",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                accountEmail: Text("nobig22@gmail.com",
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ProfileUI()));
                  },
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage("assets/images/PassportPhoto.png"),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffF15D09),
                ),
              ),
            ),
            // SwitchListTile(
            //   value: isSwitched,
            //   activeColor: Color(0xFF2FF339),
            //   onChanged: (bool value) {
            //     setState(() {
            //       isSwitched = value;
            //     });
            //   },
            //   title: Text(
            //     "Dark Mode",
            //     textScaleFactor: 1.3,
            //     style:
            //         TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // Divider(
            //   color: Color(0xFFCBD3CC),
            // ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.wrench,
                color: Colors.black,
              ),
              title: Text(
                "My Service",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.note,
                color: Colors.black,
              ),
              title: Text(
                "Service Records",
                textScaleFactor: 1.3,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
