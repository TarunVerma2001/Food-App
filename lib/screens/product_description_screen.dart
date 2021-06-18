import 'package:flutter/material.dart';
import 'package:food_app/screens/home_page.dart';

class ProductDecscriptionScreen extends StatefulWidget {
  const ProductDecscriptionScreen({Key? key}) : super(key: key);

  @override
  _ProductDecscriptionScreenState createState() =>
      _ProductDecscriptionScreenState();
}

class _ProductDecscriptionScreenState extends State<ProductDecscriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 30, top: 40, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 40,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
