import 'package:eatmore/screens.dart/sign_in_screen/sign_in_screen.dart';
import 'package:flutter/material.dart';
class forgot_password extends StatefulWidget {
  forgot_password({Key? key}) : super(key: key);

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
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
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFFCDCCF1),
                      offset: Offset(0.0,1.0),
                      blurRadius: 8.0,
                      spreadRadius: 0.0
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children:[
                    const SizedBox(height: 40),
                    const Text('Forgot Password',
                      style: TextStyle(
                          color: Color(0xFFff0036),
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Text('Enter your email address, we will send\nyou a link to recover',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 30,),
                    TextFormField(
                      style: TextStyle(color: Color(0xFFff0036)),

                      decoration: const InputDecoration(
                        fillColor: Colors.grey,
                        border: UnderlineInputBorder(),

                        hintText:  'Enter email or username',
                        hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 70,),
                    Center(
                      child: Container(
                        width: 270,
                        height: 44,
                        decoration: BoxDecoration(
                          color: Color(0xFFff0036),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        //smargin: EdgeInsets.all(25),
                        child: FlatButton(
                          child: Text('Send', style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    GestureDetector(
                      onTap:(){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>sign_in())
                        );
                        },
                      child: Row(children: [
                        Icon(Icons.arrow_back_ios_new,color: Colors.grey,size: 13,),
                        SizedBox(width: 5,),
                        Text('Back',style: TextStyle(fontSize: 13,color: Colors.grey),)
                      ],),
                    )
                ],),
              )
              //child: tab_bar(),
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
