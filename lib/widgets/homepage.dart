import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service/drawer/drawer.dart';
import 'package:service/widgets/numVerification.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffF15D09),
          title: RichText(
              text: TextSpan(
                  text: "Go",
                  style: TextStyle(
                      color: Color(0xFF0400FF),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                  children: [
                TextSpan(
                  text: " Service",
                  style: TextStyle(
                      color: Color(0xFF48FF00),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ]))),
      drawer: MyDrawer(),
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xFF0400FF),
          child: Icon(
            Icons.book_online_rounded,
            size: 30,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          color: Color(0xffF15D09),
          height: MediaQuery.of(context).size.height * 0.07,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              Icon(
                Icons.home,
                color: Colors.white,
              ),
              // BottomNavigationBarItem(
              //     icon: IconButton(
              //         onPressed: () {
              //           Navigator.push(context,
              //               MaterialPageRoute(builder: (Context) => Verify()));
              //         },
              //         icon: Icon(
              //           Icons.car_repair,
              //           color: Colors.white,
              //         )),
              //     label: "Profile"),
              // BottomNavigationBarItem(
              //     icon: Icon(
              //       Icons.book_online,
              //       color: Colors.white,
              //     ),
              //     label: "Chat"),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //color: Colors.red,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    color: Color(0xffF15D09),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                    )),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0, top: 12.0),
                        child: Text(
                          "Hello Nabin Gurung",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Color(0xFFFFFFFF),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 12.0,
                          top: 4.0,
                        ),
                        child: Text(
                          "Welcome To Go Service",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.07),
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/repairing.png",
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.25,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Select your service to continue",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Color(0xffF15D09),
                        fontSize: MediaQuery.of(context).size.width * 0.057),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFCECECE),
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //CAR SERVICE
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "CAR SERVICES",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15D09),
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.042),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "More>>",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xffF15D09),
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.037),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      //container is must for grid view
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.pink,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: MediaQuery.of(context).size.height *
                              0.01, //space between(vertical)
                          crossAxisSpacing: MediaQuery.of(context).size.width *
                              0.02, //space between(horizantal)
                          maxCrossAxisExtent:
                              MediaQuery.of(context).size.width *
                                  0.3, //width for items
                          mainAxisExtent: MediaQuery.of(context).size.height *
                              0.11, //height for items
                        ),
                        children: [
                          //Full Service
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFF2CE3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/service.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Full Service",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Dent/Scratch Removal
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF4828FF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/dent.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Dent/Scratch Removal",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Interior Cleaning
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF3CAEFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/clean.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Interior Cleaning",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //CAR POLISH
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF36FA88),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/polish.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Car Polish",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //BUMPER
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFC6FA38),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/bumper.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Repair Bumper",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //OIL CHANGE
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFDD835),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/oilchange.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Oil Change",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //CAR WASH
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFF5741),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/wash.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Car Wash",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //AC SERVICE
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF00FFDD),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/ac.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "AC Service",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
//BIKE SERVICE
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFCECECE),
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //CAR SERVICE
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "BIKE SERVICES",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15D09),
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.042),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Text(
                              "More>>",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xffF15D09),
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.037),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      //container is must for grid view
                      height: MediaQuery.of(context).size.height * 0.11,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.pink,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: MediaQuery.of(context).size.height *
                              0.01, //space between(vertical)
                          crossAxisSpacing: MediaQuery.of(context).size.width *
                              0.02, //space between(horizantal)
                          maxCrossAxisExtent:
                              MediaQuery.of(context).size.width *
                                  0.3, //width for items
                          mainAxisExtent: MediaQuery.of(context).size.height *
                              0.11, //height for items
                        ),
                        children: [
                          //Full Service
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF2FFF86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/bike.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Full Service",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Dent/Scratch Removal
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFC4CB8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/checkup.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "General Checkup",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Interior Cleaning
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF873CFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/repair.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Repairing",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //CAR POLISH
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFFBF35),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/puncture.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Puncture",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
//BIKE SERVICE
              Container(
                width: MediaQuery.of(context).size.width * 0.97,
                height: MediaQuery.of(context).size.height * 0.35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFCECECE),
                          blurRadius: 15,
                          spreadRadius: 1,
                          offset: Offset(0, 0))
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //CAR SERVICE
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "ALL TIME SUPPORT",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15D09),
                                  fontSize: MediaQuery.of(context).size.width *
                                      0.042),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      //container is must for grid view
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      //color: Colors.pink,
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          mainAxisSpacing: MediaQuery.of(context).size.height *
                              0.01, //space between(vertical)
                          crossAxisSpacing: MediaQuery.of(context).size.width *
                              0.02, //space between(horizantal)
                          maxCrossAxisExtent:
                              MediaQuery.of(context).size.width *
                                  0.3, //width for items
                          mainAxisExtent: MediaQuery.of(context).size.height *
                              0.11, //height for items
                        ),
                        children: [
                          //Full Service
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF2FFF86),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/carbreakdown.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Car Breakdown",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Dent/Scratch Removal
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFC4CB8),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/bikebreakdown.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Bike BreakDown",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Interior Cleaning
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFF873CFF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/puncturecar.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Car Tyre Puncture",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //CAR POLISH
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFFBF35),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/carflat.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Bike Tyre Puncture",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xFFFFBF35),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/emptyfuel.png",
                                  fit: BoxFit.contain,
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  width:
                                      MediaQuery.of(context).size.height * 0.06,
                                ),
                                Center(
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.048,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //  color: Colors.yellow,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 2.0),
                                      child: Center(
                                        child: Text(
                                          "Fuel Empty",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w900,
                                              color: Color(0xFF000000),
                                              fontSize: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.031),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
