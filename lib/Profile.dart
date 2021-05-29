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
  String nickName = "Ro3b";
  String address = "Cairo";
  String phoneNum = "0112358 ";

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffffffff),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10.0,),

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
                    radius: 75,
                  ),

                SizedBox(height: 25.0,),

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

          Divider(
            height: 5,
            thickness: 2.5,
            indent: 75,
            endIndent: 75,
            color: Color(0xffA8A8A8),
          ),

          SizedBox(height: 5.0,),

          Row(children: [
              SizedBox(width:7.5 ,),
              Text("Profile Info: ", style:TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
            ],
          ),

          Container(
              margin: EdgeInsets.fromLTRB(15, 20, 15, 20) ,
              padding:EdgeInsets.all(10),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nickname: ", style:TextStyle(fontSize: 25.0,),),
                      Text(nickName, style:TextStyle(fontSize: 20.0,),),
                    ],
                  ),
                  SizedBox(height: 50.0,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Address: ", style:TextStyle(fontSize: 25.0,),),
                      Text(address, style:TextStyle(fontSize: 20.0,),),
                    ],
                  ),
                  SizedBox(height: 50.0,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("phoneNum: ", style:TextStyle(fontSize: 25.0,),),
                      Text(phoneNum, style:TextStyle(fontSize: 20.0,),),
                    ],
                  ),
          ],)
          ),

          SizedBox(height: 20.0,),

        ],
        ),
    );
  }
}