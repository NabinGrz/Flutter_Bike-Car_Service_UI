import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:service/main.dart';

class Verify extends StatelessWidget {
  const Verify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      home: VerifyUI(),
    );
  }
}

class VerifyUI extends StatefulWidget {
  const VerifyUI({Key? key}) : super(key: key);

  @override
  _VerifyUIState createState() => _VerifyUIState();
}

class _VerifyUIState extends State<VerifyUI> {
  @override
  Widget build(BuildContext context) {
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
                      "Continue With Phone",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFFFFFFF),
                          fontSize: MediaQuery.of(context).size.width * 0.065),
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/verify.png",
                  fit: BoxFit.contain,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      "You'll receive a one time 6 digit code to verify next",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Color(0xFFFFFFFF),
                          fontSize: MediaQuery.of(context).size.width * 0.055),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.width * 0.055,
                        color: Colors.black),
                    keyboardType: TextInputType.number,
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
                        prefix: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Text(
                            "+977",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.055),
                          ),
                        ),
                        hintText: "Enter mobile number",
                        hintStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                            color: Colors.grey)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) => IntroScreen()));
                    },
                    child: Text(
                      "GET OTP",
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
                          200,
                          65,
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
