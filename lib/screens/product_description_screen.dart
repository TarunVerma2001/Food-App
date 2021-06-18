import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDecscriptionScreen extends StatefulWidget {
  String imgPath;
  String currentPrice;
  String originalPrice;
  String name;
  String rating;
  bool isFav;

  ProductDecscriptionScreen(
      {required this.currentPrice,
      required this.imgPath,
      required this.isFav,
      required this.name,
      required this.originalPrice,
      required this.rating});

  @override
  _ProductDecscriptionScreenState createState() =>
      _ProductDecscriptionScreenState();
}

class _ProductDecscriptionScreenState extends State<ProductDecscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          //* black
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black,
            ),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Order Now ',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white24,
                        size: 15,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white54,
                        size: 16,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 17,
                      ),
                    ],
                  ),
                )),
          ),
          //*orange
          Container(
            // padding: EdgeInsets.only(bottom: 100),
            height: MediaQuery.of(context).size.height - 50,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: Color(0xffF2BC57),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height -
                    50 -
                    MediaQuery.of(context).size.height * 0.63,
                // color: Colors.yellowAccent,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Restaurant Info',
                                style: GoogleFonts.quicksand(
                                    fontSize: 20, fontWeight: FontWeight.w800)),
                            Container(
                              height: 20,
                              width: 25,
                              child: Center(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2.5),
                                          color: Colors.black),
                                    ),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2.5),
                                          color: Colors.black),
                                    ),
                                    Container(
                                      height: 5,
                                      width: 5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2.5),
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Container(
                          height: (MediaQuery.of(context).size.height -
                                  50 -
                                  MediaQuery.of(context).size.height * 0.63) *
                              0.52,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.white,
                          ),
                          child: restaurantCard(),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.5),
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 5,
                              width: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.5),
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.5),
                                color: Colors.grey,
                              ),
                            ),
                          ])
                    ],
                  ),
                ),
              ),
            ),
          ),
          //* white main
          Container(
            height: MediaQuery.of(context).size.height * 0.63,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  topLeft: Radius.circular(30)
                  ,),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 50),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 30,
                          ),
                        ),
                        Icon(
                          widget.isFav 
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart,
                          color: Colors.pink,
                          size: 30,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width - 220,
                      width: MediaQuery.of(context).size.width - 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20,
                              spreadRadius: 10,
                            )
                          ],
                          borderRadius: BorderRadius.circular(40),
                          image: DecorationImage(
                              image: AssetImage(widget.imgPath),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text('S',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ))),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text('M',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ))),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: Center(
                                  child: Text('L',
                                      style: GoogleFonts.quicksand(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ))),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.name,
                            style: GoogleFonts.quicksand(
                                fontSize: 28, fontWeight: FontWeight.w900),
                          ),
                          Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffF2BC57),
                            ),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.star_half_outlined),
                                  Text(
                                    widget.rating,
                                    style: GoogleFonts.quicksand(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ]),
                          )
                        ]),
                    SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Mixed Pizza',
                        style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              widget.currentPrice,
                              style: GoogleFonts.quicksand(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              widget.originalPrice,
                              style: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            )
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                )
                              ]),
                          child: Center(
                              child: Text(' -  2  + ',
                                  style: GoogleFonts.quicksand(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget restaurantCard() {
    return Row(
      children: [
        Container(
          height: (MediaQuery.of(context).size.height -
                  50 -
                  MediaQuery.of(context).size.height * 0.63) *
              0.52,
          width: (MediaQuery.of(context).size.height -
                  50 -
                  MediaQuery.of(context).size.height * 0.63) *
              0.52,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/domino_logo.png'),
            ),
          ),
        ),
        Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Domino's Pizza",
              style: GoogleFonts.quicksand(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Offers Available',
              style: GoogleFonts.quicksand(
                fontSize: 15,
                // fontWeight: FontWeight.w900,
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.star_half),
                    Text(
                      '4.5',
                      style: GoogleFonts.quicksand(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Color(0xffF2BC57),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Icon(Icons.arrow_forward_outlined),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
