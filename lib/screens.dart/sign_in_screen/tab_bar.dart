import 'package:eatmore/screens.dart/sign_in_screen/login.dart';
import 'package:eatmore/screens.dart/sign_in_screen/sign_up_screens.dart';
import 'package:flutter/material.dart';

class tab_bar extends StatefulWidget {
  const tab_bar({Key? key}) : super(key: key);
  @override
  _tab_barState createState() => _tab_barState();
}
class _tab_barState extends State<tab_bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Container(
                  height: 35,
                  width: 226,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.0),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                        width:0.5,),
                  ),
                  child:  TabBar(
                    indicator: BoxDecoration(
                        color: Color(0xFFff0036),
                        borderRadius:  BorderRadius.circular(25.0)

                    ) ,
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xFFff0036),

                    tabs: const  [
                      Tab(text: 'Log In',),
                      Tab(text: 'Sign Up',),

                    ],
                  ),
                ),
                const Expanded(
                    child: TabBarView(
                      children:  [
                        login(),
                        Sign_up(),
                      ],
                    )
                )
              ],
            ),
          )

    );
  }
}