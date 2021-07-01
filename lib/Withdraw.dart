import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Withdraw extends StatefulWidget {
  @override
  WithdrawState createState() => WithdrawState();
}
class WithdrawState extends State<Withdraw> {

  String withdrawText = "Withdraw";
  bool boolWithdraw = true ;
  final TextEditingController withdrawController = TextEditingController() ;
  String amount ;
  int _value = 0;

  var rng = new Random();



  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      // user must tap button!
      builder: (BuildContext context) {
        return  AlertDialog(
          content:Container(width: 200,height :100,child:
          Center(child:
          Text("Your pin to withdraw " + withdrawController.text + " is "+ (rng.nextInt(9999-1000)+1000).toString())) ,),
          actions: [ TextButton( child: Text("Confirm ",),
              style: TextButton.styleFrom(
                textStyle:TextStyle(fontSize: 15,fontWeight:FontWeight.bold,
                    color:Color(0xff1DA1F2)),
              ),
        onPressed:(){Navigator.of(context, rootNavigator: true).pop(context);} )],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      // No app bar
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(withdrawText, style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 35.0),),
            ),

            SizedBox(height: 75.0,),

            TextField(style: TextStyle(color: Color(0xff000000),),
              keyboardType: TextInputType.number,
              maxLength: 5,
              decoration: InputDecoration(hintText: "Enter Amount to be Withdrawn ",
                counterText: '',
                filled: true,
                fillColor: Color(0xffffffff),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0),),
                ),
            ),
              controller: withdrawController,
          ),

            SizedBox(height: 20.0,),

            DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Select Method"),
                  value: 0,
                ),
                DropdownMenuItem(
                  child: Text("ATM"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Credit/Debit Card"),
                  value: 2,
                ),

              ],
                onChanged: (int value) {
                  setState(() {
                    _value = value;
                  });
                },
            ),


          SizedBox(height: 100.0,),

          MaterialButton(color: Color(0xff1DA1F2) ,child: Text('Confirm'),
            onPressed: () {
              setState(() {

                if (_value ==1)
                  _showMyDialog();
                else
                  /*Navigator.push(
                    context,
                    //This Route is Temp Remove Profile and add Cards
                    MaterialPageRoute(builder: (context) => Profile()),
                  );*/


                if (withdrawController.text != '')
                  amount = withdrawController.text;
                withdrawText = amount + ' Withdrawn' ;

              });

            },),


        ]),
    );
  }
}
