import 'package:eatmore/screens.dart/home_page/home_page.dart';
import 'package:eatmore/screens.dart/sign_in_screen/forgot_password.dart';
import 'package:flutter/material.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool _isHidden = true;
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
          SizedBox(height: 20,),
          TextFormField(
            obscureText: _isHidden,
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
              hintText:  'Password',
              hintStyle: TextStyle(fontSize: 14,color: Colors.grey),
              suffixIcon: InkWell(
                onTap: _togglePasswordView,
                child: Icon(
                  _isHidden? Icons.visibility : Icons.visibility_off,
                ),
              ),
              suffixIconColor: Colors.grey
            ),
          ),
          SizedBox(
            height: 20.0
            ,),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context)=>forgot_password())
              );
            },
            child: Text('Forgot Password?',
              style: TextStyle(
                  color: Colors.grey,fontSize: 12
              ),
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
                child: Text('Log In', style: TextStyle(fontSize: 16.0),),
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>home())
                  );
                },
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
  void _togglePasswordView(){
  setState((){
    _isHidden = !_isHidden;
  });
}
}


