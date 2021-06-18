import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/Icons/menuIconCustom.dart';
import 'package:food_app/home_page/belowTop.dart';
import 'package:food_app/screens/function_screen.dart';
import 'package:food_app/screens/product_description_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // late AnimationController controller;

  bool sideSlider = false;
  double xOffset = 0.0;
  double yOffset = 0.0;
  double scaleFactor = 1;
  double xOffset1 = 0.0;
  double yOffset1 = 0.0;
  double scaleFactor1 = 1;

  @override
  void initState() {
    super.initState();
    // controller = new AnimationController(
    //     vsync: this, duration: Duration(milliseconds: 400));
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      FunctionScreen(),
      Stack(
        children: [
          AnimatedContainer(
            alignment: Alignment.topLeft,
            transform: Matrix4.translationValues(xOffset1, yOffset1, 0)
              ..scale(scaleFactor1),
            duration: Duration(milliseconds: 450),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: sideSlider
                  ? BorderRadius.circular(40)
                  : BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 20, spreadRadius: 0),
              ],
            ),
            child: ProductDecscriptionScreen(isFav: true, imgPath: 'assets/images/pizza1.jpg', name: '5 Pepper', rating: '4.5',originalPrice: '\$169', currentPrice: '\$129',),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: sideSlider
                  ? BorderRadius.circular(40)
                  : BorderRadius.circular(0),
            ),
          )
        ],
      ),
      AnimatedContainer(
          alignment: Alignment.topLeft,
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor),
          duration: Duration(milliseconds: 400),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color(0xffFCFCFC),
            borderRadius: sideSlider
                ? BorderRadius.circular(50)
                : BorderRadius.circular(0),
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 20, spreadRadius: 0),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 00, top: 20, right: 00),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // print("hii");
                          sideSlider
                              ? setState(() {
                                  // controller.forward();
                                  sideSlider = false;
                                  xOffset = 0;
                                  yOffset = 0;
                                  scaleFactor = 1;
                                  xOffset1 = 0;
                                  yOffset1 = 0;
                                  scaleFactor1 = 1;
                                })
                              : setState(() {
                                  // controller.forward();
                                  sideSlider = true;
                                  xOffset = MediaQuery.of(context).size.height -
                                      MediaQuery.of(context).size.height * 0.62;
                                  yOffset = MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).size.width * 0.8;
                                  scaleFactor = 0.8;
                                  xOffset1 = MediaQuery.of(context).size.height -
                                      MediaQuery.of(context).size.height * 0.68;
                                  yOffset1 = MediaQuery.of(context).size.width -
                                      MediaQuery.of(context).size.width * 0.7;
                                  scaleFactor1 = 0.7;
                                });
                        },
                        child: Icon(
                          CupertinoIcons.line_horizontal_3_decrease,
                          size: 40,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Stack(
                          children: [
                            Container(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  // color: Colors.white, //background color of box
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 25.0, // soften the shadow
                                    spreadRadius: 5.0, //extend the shadow
                                  )
                                ],
                              ),
                            ),
                            Material(
                              borderRadius: BorderRadius.circular(20),
                              // elevation: 2.0,
                              child: Container(
                                height: 40,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Location',
                                      style: GoogleFonts.quicksand(
                                          color: Colors.grey, fontSize: 17),
                                    ),
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.black,
                                      size: 16,
                                    ),
                                  ],
                                ),
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
                ),
                BelowTop(),
              ],
            ),
          ))
    ]));
  }
}
