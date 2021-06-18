import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/product_description_screen.dart';
import 'package:google_fonts/google_fonts.dart';

List<Map> ls = Constants().ls;

class BelowTop extends StatefulWidget {
  const BelowTop({Key? key}) : super(key: key);

  @override
  _BelowTopState createState() => _BelowTopState();
}

class _BelowTopState extends State<BelowTop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Evening! Justin',
                style: GoogleFonts.quicksand(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Grab your',
                style: GoogleFonts.quicksand(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'delicious meal!',
                style: GoogleFonts.quicksand(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        // color: Colors.white, //background color of box
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 25.0, // soften the shadow
                          spreadRadius: 5.0, //extend the shadow
                        )
                      ],
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Center(
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search),
                                  hintText: 'Restaurents, Foods...',
                                  hintStyle: GoogleFonts.quicksand(
                                    color: Colors.black26,
                                    fontSize: 18,
                                  ))),
                        )),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 25.0, // soften the shadow
                          spreadRadius: 5.0, //extend the shadow
                        )
                      ],
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(CupertinoIcons.line_horizontal_3, size: 30),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Explore Catagories',
                  style: GoogleFonts.quicksand(
                      fontSize: 20, fontWeight: FontWeight.w800)),
              Container(
                height: 20,
                width: 25,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5),
                            color: Colors.black),
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5),
                            color: Colors.black),
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5),
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        // itemCard('Pizza', 'assets/images/pizza.png'),
        Container(
          height: 130,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: ls.length,
            itemBuilder: (BuildContext context, index) {
              return itemCard(ls[index]['name'], ls[index]['imgPath'],
                  ls[index]['isActive']);
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Most Popular',
                  style: GoogleFonts.quicksand(
                      fontSize: 20, fontWeight: FontWeight.w800)),
              Container(
                height: 20,
                width: 25,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5),
                            color: Colors.black),
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5),
                            color: Colors.black),
                      ),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.5),
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        shoppingCard('assets/images/pizza1.jpg', '5 Pepper', 'Mixed Pizza',
            '\$129', '\$169', '4.5', true),
        SizedBox(height: 20),
        shoppingCard('assets/images/pizza2.jpg', 'Mexican', 'Mixed Pizza',
            '\$129', '\$169', '4.1', false),
        SizedBox(height: 20),
        shoppingCard('assets/images/pizza3.jpg', 'Margarita', 'Mixed Pizza',
            '\$129', '\$169', '4.2', false),
        SizedBox(height: 20),
        shoppingCard('assets/images/pizza4.jpg', 'Cheez Burst', 'Mixed Pizza',
            '\$129', '\$169', '4.5', true),
        SizedBox(height: 20),
      ],
    );
  }

  Widget shoppingCard(
      String imgPath,
      String name,
      String subName,
      String currentPrice,
      String originalPrice,
      String rating,
      bool isFavorite) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ProductDecscriptionScreen(currentPrice: currentPrice, originalPrice: originalPrice, rating: rating, name: name, imgPath: imgPath, isFav: isFavorite,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          height: 180,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 10, spreadRadius: 10)
              ]),
          child: Row(
            children: [
              Container(
                height: 180,
                width: (MediaQuery.of(context).size.width - 60) * 0.42,
                decoration: BoxDecoration(
                  // color: Colors.teal,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: 180,
                width: (MediaQuery.of(context).size.width - 60) * 0.58,
                // color: Colors.yellow,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(name,
                            style: GoogleFonts.quicksand(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Container(
                          height: 65,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 10,
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star_half_sharp,
                                color: Colors.black,
                              ),
                              Text(
                                rating,
                                style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(subName,
                        style: GoogleFonts.quicksand(
                            fontSize: 15, fontWeight: FontWeight.w400)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              currentPrice,
                              style: GoogleFonts.quicksand(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Text(
                              originalPrice,
                              style: GoogleFonts.quicksand(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey, decoration: TextDecoration.lineThrough,),
                            ),
                          ],
                        ),
                        Icon(
                          isFavorite
                              ? CupertinoIcons.heart_fill
                              : CupertinoIcons.heart,
                          color: Colors.pink,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget itemCard(String name, String imgPath, bool isActive) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        margin: EdgeInsets.only(left: 30),
        // height: 120,
        width: 90,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Color(0xffF2BC57) : Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(35),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Image(
                    image: AssetImage(imgPath),
                  ),
                ),
              ),
            ),
            Text(
              name,
              style: GoogleFonts.quicksand(
                  fontSize: 15, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
