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
  Widget Img = FlutterLogo();
  String NickName = "Nickname ";
  String Address = "Address ";
  String PhoneNum = "Phone Number ";

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffffffff),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 50.0,),

          CircularProfileAvatar(
              null,
              borderWidth: 5.0,
              borderColor: Color(0xff1DA1F2),
              child: Img,
              elevation: 5,
              radius: 100,
            ),

          IconButton(icon:Icon(CupertinoIcons.qrcode,), iconSize:40.0,
              onPressed: () {Navigator.push(context,
              MaterialPageRoute(builder: (context) => QrCode()),
              );
              },
            ),

          Text(NickName, style:TextStyle(fontSize: 30.0,),),

          Text(Address, style:TextStyle(fontSize: 30.0,),),

          Text(PhoneNum, style:TextStyle(fontSize: 30.0,),),

          IconButton(icon:Icon(Icons.edit,), iconSize:40.0,
              onPressed: () {Navigator.push(context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
              },
            ),

          SizedBox(height: 50.0,),
        ],
        ),
      ),
    );
  }
}