// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:incrementapp/Intro_screens/intro_page_1.dart';
// import 'package:incrementapp/Intro_screens/intro_page_2.dart';
// import 'package:incrementapp/Intro_screens/intro_page_3.dart';
// import 'package:incrementapp/views/login_view.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class OnBoardingScreen extends StatefulWidget {
//   const OnBoardingScreen({Key? key}) : super(key: key);

//   @override
//   _onBoardingScreenState createState() => _onBoardingScreenState();
// }

// class _onBoardingScreenState extends State<OnBoardingScreen> {
//   PageController _controller = PageController();

//   bool onLastPage = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(children: [
//         PageView(
//           controller: _controller,
//           onPageChanged: (index) {
//             setState(() {
//               onLastPage = (index == 2);
//             });
//           },
//           children: [
//             IntroPage1(),
//             IntroPage2(),
//             IntroPage3(),
//           ],
//         ),

//         //Dot Indicators
//         Container(
//           alignment: const Alignment(0, 0.75),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               //Skip Button
//               GestureDetector(
//                 onTap: () {
//                   _controller.jumpToPage(2);
//                 },
//                 child: const Text("Skip"),
//               ),

//               //Dot Indicator
//               SmoothPageIndicator(controller: _controller, count: 3),

//               //Next or Done Button
//               onLastPage
//                   ? GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) {
//                           return LoginView();
//                         }));
//                       },
//                       child: const Text("Done"),
//                     )
//                   : GestureDetector(
//                       onTap: () {
//                         _controller.nextPage(
//                           duration: Duration(milliseconds: 400),
//                           curve: Curves.bounceInOut,
//                         );
//                       },
//                       child: const Text("Next"),
//                     )
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
          globalBackgroundColor: Colors.black,
          scrollPhysics: BouncingScrollPhysics(),
          pages: [
            PageViewModel(
              titleWidget: Text(
                "Hiiii",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body: "Hi this is my body",
              image: Image.network(
                "https://cdn-icons-png.flaticon.com/512/4436/4436481.png",
                height: 400,
                width: 400,
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                "Hiiii",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body: "Hi this is my body",
              image: Image.network(
                "https://cdn-icons-png.flaticon.com/512/4436/4436481.png",
                height: 400,
                width: 400,
              ),
            ),
            PageViewModel(
              titleWidget: Text(
                "Hiiii",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              body: "Hi this is my body",
              image: Image.network(
                "https://cdn-icons-png.flaticon.com/512/4436/4436481.png",
                height: 400,
                width: 400,
              ),
            ),
          ],
          onDone: () {
            Navigator.pushNamed(context, "login");
          },
          onSkip: () {
            Navigator.pushNamed(context, "login");
          },
          showSkipButton: true,
          skip: Text(
            "Skip",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          next: Icon(
            Icons.arrow_forward,
            color: Colors.amberAccent,
          ),
          done: Text(
            "Done",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          dotsDecorator: DotsDecorator(
              size: Size.square(10.0),
              activeSize: Size(20.0, 10.0),
              color: Colors.black,
              activeColor: Colors.blue,
              spacing: EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)))),
    );
  }
}
