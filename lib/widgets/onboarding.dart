import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';

const COLOR_PRIMARY_DARK = 0xFFB0FFEC;
const COLOR_PRIMARY = 0xFFB0FFEC;

final _currentPageNotifier = ValueNotifier<int>(0);
final List<String> _titlesList = [
  'Welcome to Helge',
  'Answer Questions',
  'Get the results',
  'Help yourself',
  'Track and improve'
];

final List<String> _subtitlesList = [
  'How was your day at school?',
  'Answer some questions after school about your mood, energy and life',
  'The test helps you to undertand your situation better',
  'You can use Helge app to find a better balance and enjoy yourself more',
  'Track your energy and mood to see observe your progress'
];

final List<Widget> _pages = [];

List<Widget> populatePages(Function end) {
  _pages.clear();
  _titlesList.asMap().forEach((index, value) =>
      _pages.add(getPage(value, _subtitlesList.elementAt(index))));
  _pages.add(getLastPage(end));
  return _pages;
}

Widget _buildCircleIndicator() {
  return CirclePageIndicator(
    selectedDotColor: const Color(0XFF162C45),
    dotColor: Colors.white,
    itemCount: _pages.length,
    selectedSize: 12,
    size: 10,
    currentPageNotifier: _currentPageNotifier,
  );
}

Widget getPage(String title, String subTitle) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(176, 255, 236, 1),
            Color.fromRGBO(247, 255, 197, 1),
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 161.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(40.0),
              ),
              Text(
                title,
                style: TextStyle(
                    color: const Color(0XFF162C45),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  subTitle,
                  style:
                      TextStyle(color: const Color(0XFF162C45), fontSize: 17.0),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget getLastPage(Function end) {
  return Center(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(176, 255, 236, 1),
            Color.fromRGBO(247, 255, 197, 1),
          ],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(40.0),
              ),
              Text(
                'Some call to action',
                style: TextStyle(
                    color: const Color(0XFF162C45),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      top: 200, bottom: 10, left: 15, right: 15),
                  child: Container(
                      width: 310,
                      height: 64,
                      child: OutlineButton(
                        onPressed: end,
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              fontSize: 17.0,
                              color: const Color(0XFF162C45),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        borderSide: BorderSide(color: const Color(0XFF162C45)),
                        shape: StadiumBorder(),
                      )))
            ],
          ),
        ),
      ),
    ),
  );
}

class OnBoarding extends StatefulWidget {
  final Function end;

  OnBoarding(this.end);

  @override
  _OnBoardingState createState() => _OnBoardingState(end);
}

class _OnBoardingState extends State<OnBoarding> {
  final Function endFunction;

  _OnBoardingState(this.endFunction);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
        children: <Widget>[
          PageView(
            children: populatePages(endFunction),
            onPageChanged: (int index) {
              _currentPageNotifier.value = index;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildCircleIndicator(),
            ),
          )
        ],
      )),
    );
  }
}
