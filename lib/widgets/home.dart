import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset('assets/images/quiz.png'),
            Text(
              'Welcome to',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(22, 44, 69, 1)),
              textAlign: TextAlign.center,
            ),
            Text(
              'Your questionnaire',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(22, 44, 69, 1)),
              textAlign: TextAlign.center,
            ),
            Text(
              'Testuser',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(22, 44, 69, 1)),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 288,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(
                          'Find a comfortable place.',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              height: 1.5,
                              color: Color.fromRGBO(22, 44, 69, 1)),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Don’t think long, trust your gut and give the first response that comes to your mind.',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              height: 1.5,
                              color: Color.fromRGBO(22, 44, 69, 1)),
                          textAlign: TextAlign.center,
                        ),
                      ]),
                      Container(
                        width: 318,
                        height: 64,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(64.0),
                          ),
                          onPressed: () {},
                          elevation: 0,
                          color: Color.fromRGBO(0, 75, 172, 1),
                          child: Text('Take the quiz',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ]),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/bottom_nav_home.svg',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color.fromRGBO(84, 158, 249, 1)),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/bottom_nav_me.svg',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Me',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color.fromRGBO(34, 73, 118, 1)),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/bottom_nav_explore.svg',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Explore',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color.fromRGBO(34, 73, 118, 1)),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/bottom_nav_diary.svg',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Diary',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color.fromRGBO(34, 73, 118, 1)),
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/bottom_nav_sos.svg',
                  width: 24,
                  height: 24,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'SOS',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color.fromRGBO(34, 73, 118, 1)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
