import 'package:flutter/material.dart';
class Sign_up extends StatefulWidget {
  const Sign_up({Key? key}) : super(key: key);

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            style: TextStyle(color: Color(0xFFff0036)),

            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText:  'Enter email or username',
              hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            style: TextStyle(color: Color(0xFFff0036)),
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText:  'Password',
                hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
                // suffixIcon: Icon(Icons.visibility),
                // suffixIconColor: Colors.grey
            ),
          ),
          SizedBox(
            height: 10.0
            ,),
          TextFormField(
            style: TextStyle(color: Color(0xFFff0036)),
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText: 'Confirm Password',
              hintStyle: TextStyle(fontSize: 14,color: Colors.grey),

            ),
          ),
          SizedBox(height: 30,),
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
                child: Text('Sign Up', style: TextStyle(fontSize: 16.0),),
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(height: 30,),
          Center(
              child: Text(
                'OR',style: TextStyle(color: Colors.grey),
              )
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                elevation: 1,
                onPressed: (){},
                child: Image.asset('assets/facebook.png'),
                backgroundColor: Colors.white,
              ),
              SizedBox(width: 10,),
              FloatingActionButton(
                elevation: 1,
                onPressed: (){},
                child: Image.asset('assets/twitter.png'),
                backgroundColor: Colors.white,
              ),
              SizedBox(width: 10,),
              FloatingActionButton(
                elevation: 1,
                onPressed: (){},
                child: Image.asset('assets/google.png'),
                backgroundColor: Colors.white,
              ),
            ],)
        ],),

    );
  }
}
