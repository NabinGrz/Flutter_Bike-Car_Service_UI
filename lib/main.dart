import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:service/widgets/homepage.dart';
import 'package:service/widgets/numVerification.dart';
import 'package:service/widgets/select.dart';

void main() {
  runApp(Verify());
}

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Color(0xffF15D09),
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.light),
    );

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroScreenUI(),
    );
  }
}

class IntroScreenUI extends StatefulWidget {
  const IntroScreenUI({Key? key}) : super(key: key);

  @override
  _IntroScreenUIState createState() => _IntroScreenUIState();
}

class _IntroScreenUIState extends State<IntroScreenUI> {
  final decoration = PageDecoration(
      titleTextStyle: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
      bodyTextStyle: TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w900));
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/images/intro1.png"),
        title: "Check Up",
        body: "Nepal's First Service Provider App",
        decoration: decoration,
      ),
      PageViewModel(
        image: Image.asset(
          "assets/images/intro2.png",
        ),
        title: "Car Full Service",
        body: "Nepal's First Service Provider App",
        decoration: decoration,
      ),
      PageViewModel(
        image: Image.asset("assets/images/intro6.png"),
        title: "Repairing",
        body: "Nepal's First Service Provider App",
        decoration: decoration,
      ),
      PageViewModel(
        image: Image.asset("assets/images/intro4.png"),
        title: "Bike Maintain",
        body: "Nepal's First Service Provider App",
        decoration: decoration,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.quicksand().fontFamily,
      ),
      home: Scaffold(
        body: IntroductionScreen(
            globalBackgroundColor: Color(0xffF15D09),
            dotsDecorator: DotsDecorator(
                color: Colors.white,
                size: Size(10, 10),
                activeColor: Color(0xFF48FF00),
                activeSize: Size(25, 10),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            pages: getPages(),
            globalHeader: Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Image.asset(
                "assets/images/goservice.png",
              ),
            ),
            onDone: () {}, //required
            showSkipButton:
                true, //this will skip the page and move to last page
            skip: const Text("Skip >>",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 20)),
            done: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Select()));
              },
              child: Text(
                "Done",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800),
              ),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  primary: Colors.white,
                  minimumSize: Size(140, 50)),
            ), //r///required
            next: Icon(
              //to move to next page
              Icons.arrow_forward,
              color: Colors.white,
              size: 30,
            ) //required
            //   ElevatedButton(
            //   onPressed: () {},
            //   child: Text(
            //     "Next",
            //     style: TextStyle(
            //         color: Colors.black, fontSize: 20, fontWeight: FontWeight.w800),
            //   ),
            //   style: ElevatedButton.styleFrom(
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.all(Radius.circular(50))),
            //       primary: Colors.white,
            //       minimumSize: Size(140, 50)),
            // ),
            ),
      ),
    );
  }
}
