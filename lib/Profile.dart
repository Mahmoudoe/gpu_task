import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'QrCode.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}
class ProfileState extends State<Profile> {
  Widget img = FlutterLogo();
  String name = "Ro3b";
  String address = "Cairo";
  String phoneNum = "0112358 ";
  String iD = "2991012100832";

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Color(0xffffffff),
      body: ListView(children: [
        SizedBox(height: 50.0,),

        Center(
              child: Text("Profile",
                style:TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),
              ),
            ),

        SizedBox(height: 25.0,),

        Center(child: Stack(alignment: AlignmentDirectional.bottomEnd,
          children: [MaterialButton(onPressed: (){ },
              child: CircularProfileAvatar(null,
                child: FlutterLogo(),
                borderWidth: 2.5,
                borderColor: Color(0xffffffff),
                elevation: 5,
                radius: 70,
              ),
            ),

            Container(child: IconButton(icon:Icon(CupertinoIcons.qrcode, color:Color(0xff1DA1F2) ,), iconSize:30.0,
                onPressed: () {Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QrCode()),
                );  },
              ),
              decoration: BoxDecoration(color: Color(0xffffffff),
                border: Border.all(width: 1.5,color: Color(0xffA8A8A8)),
                borderRadius:BorderRadius.all(Radius.circular(20.0),),),
            ),
          ],
            ),
        ),

        SizedBox(height: 25.0,),

        Container(
            margin: EdgeInsets.fromLTRB(15, 30, 15, 20) ,
            padding:EdgeInsets.all(10),
            child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Row(
                      children: [Text("Nickname ", style:
                      TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,
                          color: Color(0xffA8A8A8)),),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(name, style:TextStyle(fontSize: 25.0),),

                        TextButton(child: Text('Update'),
                          style: TextButton.styleFrom(
                            textStyle:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                                color:Color(0xff1DA1F2)),
                          ),
                          onPressed: () {

                          },),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 10.0,),

                Column(
                  children: [
                    Row(
                      children: [Text("Address ", style:
                      TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,
                          color: Color(0xffA8A8A8)),),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(address,
                        style:TextStyle(fontSize: 25.0),),

                        TextButton(child: Text('Update'),
                          style: TextButton.styleFrom(
                            textStyle:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                                color:Color(0xff1DA1F2)),
                          ),
                          onPressed: () {

                          },),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 10.0,),

                Column(
                  children: [
                    Row(
                      children: [Text("PhoneNum ", style:
                      TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,
                          color: Color(0xffA8A8A8)),),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(phoneNum,
                        style:TextStyle(fontSize: 25.0,),),

                        TextButton(child: Text('Update'),
                          style: TextButton.styleFrom(
                            textStyle:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                                color:Color(0xff1DA1F2)),
                          ),
                          onPressed: () {

                          },),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 10.0,),

                Column(
                  children: [
                    Row(
                      children: [Text("ID ", style:
                      TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,
                          color: Color(0xffA8A8A8)),),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(iD, style:TextStyle(fontSize: 25.0,),),

                      ],
                    ),
                  ],
                ),
              ],
            )
        ),
      ],
      ),
    );
  }
}
