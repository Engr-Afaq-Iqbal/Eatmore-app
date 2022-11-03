import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}
class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf7f6ff),
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,top: 40),
        child: Container(
          color: Color(0xFFf7f6ff),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.drag_handle,color: Colors.black,size: 35,),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person,color: Colors.grey,size: 35,),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text('Choose the',style: TextStyle(fontSize: 18,color: Colors.black),),
              SizedBox(height: 5,),
              Text('Food you love',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 30,),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:25.0,right: 15.0,bottom: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText:  'Search for a food item',
                        hintStyle: TextStyle(fontSize: 12,color: Color(0xFFc9c9c9)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Text('Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),)
            ],
          ),
        ),
      )
    );
  }
}
