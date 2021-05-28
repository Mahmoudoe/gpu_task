import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'Edit_Profile.dart';
import 'QrCode.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}
class ProfileState extends State<Profile> {
  Widget img = FlutterLogo();
  String nickName = "Nickname ";
  String address = "Address ";
  String phoneNum = "Phone Number ";

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffffffff),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 20.0,),

          Container(
            margin: EdgeInsets.all(25),
            padding:EdgeInsets.all(20),
            child: Column(
              children: [
                CircularProfileAvatar(
                    null,
                    borderWidth: 2.5,
                    borderColor: Color(0xffA8A8A8),
                    child: img,
                    elevation: 5,
                    radius: 100,
                  ),

                SizedBox(height: 50.0,),

                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [SizedBox(width: 25.0,),
                    IconButton(icon:Icon(CupertinoIcons.qrcode,), iconSize:45.0,
                      onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QrCode()),
                      );
                      },
                    ),

                    IconButton(icon:Icon(Icons.edit,), iconSize:45.0,
                      onPressed: () {Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EditProfile()),
                      );
                      },
                    ),
                    SizedBox(width: 25.0,),
                  ],
                ),
              ],
            ),
          ),

          Container(
              margin: EdgeInsets.all(25),
              padding:EdgeInsets.all(20),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(nickName, style:TextStyle(fontSize: 30.0,),),
                  SizedBox(height: 75.0,),
                  Text(address, style:TextStyle(fontSize: 30.0,),),
                  SizedBox(height: 75.0,),
                Text(phoneNum, style:TextStyle(fontSize: 30.0,),),
          ],)
          ),

          SizedBox(height: 20.0,),

        ],
        ),
      ),
    );
  }
}