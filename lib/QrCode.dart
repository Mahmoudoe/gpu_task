import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:gpu_task/Profile.dart';



class QrCode extends StatefulWidget {
  @override
  QrCodeState createState() => QrCodeState();
}
class QrCodeState extends State<QrCode> {

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffffffff),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(decoration: BoxDecoration(color: Color(0xffA8A8A8),
                borderRadius:BorderRadius.all(Radius.circular(10.0),),
                ),
                margin: EdgeInsets.all(30),
                padding:EdgeInsets.all(30),
                child: QrImage(
                  data: 'This will be our QR code',
                  version: QrVersions.auto,
                  size: 300,
                  gapless: true,
                ),
              ),

              SizedBox(height: 50.0,),

              MaterialButton(color: Color(0xff1DA1F2) ,child: Text('Back'),onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile() ), );
              },),


            ],
          ),
    ),
    );
  }
}


