import 'package:eatmore/screens.dart/sign_in_screen/tab_bar.dart';
import 'package:flutter/material.dart';

import 'login.dart';
class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFFf7f6ff),
        child: Stack(children: [
          Positioned(
            top: -h*0.195,
              left: -60,
              child:  Image.asset('assets/MaskGroup2.png',width: 451,height: 451,)
          ),
          Positioned(
              top: -h*0.195,
              left: -60,
              child:  Image.asset('assets/Ellipse3.png',width: 451,height: 451,)
          ),
          Positioned(
            top: h*0.09,
              left: w*0.35,
              child: Image.asset('assets/eatmore_logo.png',width: 108,height: 46,)
          ),
          Positioned(
              top: h*0.2,
              left: 28,
              child:  Container(
              height: 520,
              width: 300,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFFCDCCF1),
                        offset: Offset(0.0,1.0),
                        blurRadius: 8.0,
                        spreadRadius: 0.0
                    )
                  ],
                ),
                child: tab_bar(),
            ),
          ),
          Positioned(
              bottom: -120,
              right: -10,
              child: Image.asset('assets/salad.png')
          ),
          Positioned(
              bottom: -40,
              right: -10,
              child: Image.asset('assets/tomotos.png')
          ),

        ],),
      ),
    );
  }
}

