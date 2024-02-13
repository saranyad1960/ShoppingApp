import 'dart:math';

import 'package:flutter/material.dart';


class OrderSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pink.shade100, Colors.white],
          begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          _buildColorPapers(),
          Center(
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.check_circle,
                  size: 90,
                  color: Colors.green,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 480),
            child: Text("Your Order has been \n accepted",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40,top: 550),
            child: Text("Your items has been placed and is on \n the way to being proccessed",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade700,
                  decoration: TextDecoration.none
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 660,bottom: 20,left: 20,right: 20),
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text("Track Order",
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      letterSpacing: 1
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 750,left: 150),
              child: Text("Back to Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none,
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildColorPapers() {
  return Stack(
    children: List.generate(
      100,
          (index) {
        final size = Random().nextInt(200).toDouble();
        return Positioned(
          left: Random().nextDouble() * 500,
          top: Random().nextDouble() * 800,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: _randomColor(),
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    ),
  );
}

Color _randomColor() {
  return Color.fromRGBO(
    Random().nextInt(128) + 128,
    Random().nextInt(128) + 128,
    Random().nextInt(128) + 128,
    1,
  );
}

void main() {
}


