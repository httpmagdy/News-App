import 'package:flutter/material.dart';
import 'package:flutter_app2/page_model.dart';
import 'package:flutter_app2/screens/home_screen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  ValueNotifier<int> _pageviewNotifier = ValueNotifier(0);

  List<PageModel> pages;

  void addPages(){
    pages = List<PageModel>();
    pages.add(PageModel(
      'Welcome!',
      Icons.ac_unit, '1 - Welcome 2Welcome 2Welcome Welcome 2Welcome 2Welcome 2Welcome',
      'assets/images/g1.jpg',
    ),);pages.add(PageModel(
      'Android',
      Icons.android, '2 - Welcome 2Welcome 2Welcome Welcome 2Welcome 2Welcome 2Welcome',
      'assets/images/g2.jpg',
    ),);pages.add(PageModel(
      'Translate!',
      Icons.translate, '3 - Welcome 2Welcome 2Welcome Welcome 2Welcome 2Welcome 2Welcome',
      'assets/images/g3.jpg',
    ),);pages.add(PageModel(
      'Whatshot',
      Icons.whatshot, '4 - Welcome 2Welcome 2Welcome Welcome 2Welcome 2Welcome 2Welcome',
      'assets/images/g4.jpg',
    ),);
  }

  @override
  Widget build(BuildContext context) {

    addPages();

    return Stack(
      children: <Widget>[
        Scaffold(
          body: PageView.builder(
            itemBuilder: (BuildContext context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: ExactAssetImage(
                        pages[index].image,
                      ),
                      fit: BoxFit.cover,
                    )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icon,
                          size: 120,
                          color: Colors.tealAccent,
                        ),
                        offset: Offset(0, -60),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          pages[index].description,
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: pages.length,
            onPageChanged: (index){
              _pageviewNotifier.value = index;
            },
          ),
        ),
        Transform.translate(
          child: Align(
            alignment: Alignment.center,
            child: _displayPageIndicators(pages.length),
          ),
          offset: Offset(0, 175),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                color: Colors.tealAccent.withOpacity(.7),
                child: Text(
                  'GET STARTED',
                  style: TextStyle(color: Colors.white, letterSpacing: 2),
                ),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context){
                        _updateSeen();
                        return HomeScreen();
                      }
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _displayPageIndicators(int length){
    return PageViewIndicator(
      pageIndexNotifier: _pageviewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.tealAccent,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.black.withOpacity(.7),
        ),
      ),
    );
  }

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }

}





















