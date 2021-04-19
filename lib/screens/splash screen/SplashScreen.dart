import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_app/screens/Personal%20screen/PersonalScreen.dart';
import 'package:personal_app/Models/Clippers.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  int currenPage = 0;
  PageController pageController = PageController();

  List<Map<String, String>> splashPageViewItems = [
    {
      'image': 'icons/splash3.svg',
      'text': 'Here text what i want to explain to the user of my application'
    },
    {
      'image': 'icons/splash2.svg',
      'text': 'Here text what i want to explain to the user of my application'
    },
    {
      'image': 'icons/splash1.svg',
      'text': 'Here text what i want to explain to the user of my application'
    },
  ];
  void openPersonalScreen() {
    Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (ctx, b, a) => PersonalDetailsScreen(),
          transitionDuration: Duration(seconds: 0),
        ));
  }

  onPageChange(int index) {
    setState(() {
      currenPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
                clipper: SplashCurve(),
                child: Container(
                  height: 90,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                )),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      'Personal App',
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: onPageChange,
                    itemCount: splashPageViewItems.length,
                    itemBuilder: (ctx, i) => Column(
                      children: [
                        Spacer(
                          flex: 3,
                        ),
                        SvgPicture.asset(
                          splashPageViewItems[i]['image'],
                          width: 200,
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40),
                          child: Text(
                            splashPageViewItems[i]['text'],
                            textAlign: TextAlign.center,
                            style: TextStyle(height: 1.5),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          PointDot(
                            color: currenPage == 0
                                ? Theme.of(context).primaryColor
                                : Colors.grey[400],
                            onTap: () {
                              setState(() {
                                pageController.animateToPage(
                                  0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              });
                            },
                          ),
                          SizedBox(width: 6),
                          PointDot(
                            color: currenPage == 1
                                ? Theme.of(context).primaryColor
                                : Colors.grey[400],
                            onTap: () {
                              setState(() {
                                pageController.animateToPage(
                                  1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              });
                            },
                          ),
                          SizedBox(width: 6),
                          PointDot(
                            color: currenPage == 2
                                ? Theme.of(context).primaryColor
                                : Colors.grey[400],
                            onTap: () {
                              setState(() {
                                pageController.animateToPage(
                                  2,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              });
                            },
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: InkWell(
                          onTap: () {
                            currenPage != 2
                                ? setState(() {
                                    pageController.animateToPage(
                                      currenPage + 1,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeInOut,
                                    );
                                  })
                                : openPersonalScreen();
                          },
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                currenPage != 2 ? 'Next' : 'Done',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PointDot extends StatelessWidget {
  Color color;
  Function onTap;
  PointDot({
    this.color,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 6,
        width: 6,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
