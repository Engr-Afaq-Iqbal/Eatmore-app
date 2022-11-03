import 'package:eatmore/screens.dart/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState(){
    super.initState();
    _navigation_to_Signin();
  }
  _navigation_to_Signin() async{
    await Future.delayed(Duration(milliseconds: 3000),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>sign_in()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
        Color(0xFFff1446),
        Color(0xFFff6283),
        ],
        stops: const [
            0.0,
            1.0
            ]
        ),
      ),
        child: Stack(
          children: [
            Center(child: Image.asset('assets/eatmore_logo.png',height: 76,width: 178,)),
            Positioned(
              top: 600,
                left: 45,

                child: Image.asset('assets/vegitables.png',))
          ],
        ),
        // child: Column(
        //   children: [
        //     Center(child: Text('Hello',style: TextStyle(fontSize: 50,color: Colors.white),)),
        //     Center(),
        //   ],
        // ),
      ),

    );
  }
}
