import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service/main.dart';
import 'package:service/widgets/homepage.dart';

class Select extends StatelessWidget {
  const Select({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      home: SelectUI(),
    );
  }
}

class SelectUI extends StatefulWidget {
  const SelectUI({Key? key}) : super(key: key);

  @override
  _SelectUIState createState() => _SelectUIState();
}

class _SelectUIState extends State<SelectUI> {
  @override
  Widget build(BuildContext context) {
    List _city = ['Kathmandu', 'Lalitpur', 'Bhaktapur'];
    return Material(
      child: Scaffold(
        body: Container(
          color: Color(0xffF15D09),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30.0, horizontal: 20.0),
                    child: Text(
                      "Select Service Type",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFFFFFFF),
                          fontSize: MediaQuery.of(context).size.width * 0.065),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                                child: Image.asset(
                              "assets/images/car.png",
                              fit: BoxFit.contain,
                              // width: MediaQuery.of(context).size.width * 0.9,
                              // height: MediaQuery.of(context).size.height * 0.25,
                            )),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Center(
                                child: Text(
                                  "Car",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF000000),
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.06),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                                child: Image.asset(
                              "assets/images/bikeselect.png",
                              fit: BoxFit.contain,
                              // width: MediaQuery.of(context).size.width * 0.9,
                              // height: MediaQuery.of(context).size.height * 0.25,
                            )),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Center(
                                child: Text(
                                  "Bike",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Color(0xFF000000),
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.06),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width * 0.055,
                        color: Colors.black),
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        hintText: "Enter Your City",
                        hintStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                            color: Colors.grey)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) => MyApp()));
                    },
                    child: Text(
                      "Next",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xFF00CCFF),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        minimumSize: Size(
                          150,
                          60,
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
