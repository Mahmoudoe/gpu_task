import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gpu_task/Profile.dart';

class Withdraw extends StatefulWidget {
  @override
  WithdrawState createState() => WithdrawState();
}
class WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      // No app bar
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Withdraw', style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 40.0),),

            SizedBox(height: 75.0,),

            TextField(style: TextStyle(color: Color(0xff000000),),
              decoration: InputDecoration(hintText: "Enter Amount to be Withdrawn ",
              filled: true,
              fillColor: Color(0xffA8A8A8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
            ),
          ),

          SizedBox(height: 100.0,),

          MaterialButton(color: Color(0xff1DA1F2) ,child: Text('Confirm'),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => Profile() ), );
            },),


        ]),
    );
  }
}
