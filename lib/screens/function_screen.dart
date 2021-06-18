import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FunctionScreen extends StatefulWidget {
  const FunctionScreen({Key? key}) : super(key: key);

  @override
  _FunctionScreenState createState() => _FunctionScreenState();
}

class _FunctionScreenState extends State<FunctionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xffF2BC57),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.close_rounded),
              iconSize: 40,
            ),
            SizedBox(height: 40,),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70 / 2),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Hello,',
                      style: GoogleFonts.quicksand(
                          fontSize: 30, color: Colors.black),
                    ),
                    Text(
                      'Justin',
                      style: GoogleFonts.quicksand(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 30),
            card(CupertinoIcons.home, 'Home', 20),
            card(Icons.card_travel, 'My Cart', 20),
            card(Icons.cases_rounded, 'Order History', 20),
            card(Icons.attach_file,'Enter Promo Code', 20),
            card(CupertinoIcons.creditcard, 'Wallet', 20),
            card(CupertinoIcons.star, 'Favorites', 20),
            card(CupertinoIcons.question, 'FAQs', 20),
            card(CupertinoIcons.phone, 'Support', 20),
            card(Icons.settings, 'Setting', 20),
            card(Icons.logout, 'Logout', 20),

          ],
        ),
      ),
    );
  }

  Widget card(IconData iconData, String name, double size) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          children: [
            Icon(
              iconData,
              size: size,
            ),
            SizedBox(width: 15,),
            Text(
              name,
              style: GoogleFonts.quicksand(fontSize: size, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ],
    );
  }
}
