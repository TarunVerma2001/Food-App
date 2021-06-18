import 'package:flutter/material.dart';


   
   class MenuIcon extends StatelessWidget {

     double size;
     MenuIcon({required this.size});
   
     @override
     Widget build(BuildContext context) {
       return Container(
      height: size,
      width: size,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: size / 12.5,
                width: size / 2 - size / 12.5,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3 / 2),
                )),
            Container(
                height: size / 12.5,
                width: size,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(3 / 2),
                )),
            Row(children: [
              SizedBox(width:size / 2 + size / 12.5),
              Container(
                  height: size / 12.5,
                  width: size / 2 - size / 12.5,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3 / 2),
                  )),
            ])
          ]),
    );
     }
   }