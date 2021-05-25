import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:gpu_task/Profile.dart';

class EditProfile extends StatefulWidget {
  @override
  EditProfileState createState() => EditProfileState();
}
class EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      // No app bar
      body: ListView(children: [
        Column(children: [

          SizedBox(height: 50.0,),

          Column(
            children: [
              CircularProfileAvatar(
                null,
                borderWidth: 5.0,
                borderColor: Colors.blue,
                child: FlutterLogo(),
                elevation: 5,
                radius: 100,
              ),

              IconButton(icon:Icon(Icons.camera,), iconSize:35.0,
                onPressed: () { },
              ),
            ],
          ),

          SizedBox(height: 50.0,),

          TextField(style: TextStyle(color: Color(0xff000000),),
            decoration: InputDecoration(hintText: "Enter Nickname ",
              filled: true,
              fillColor: Color(0xffA8A8A8),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
            ),
          ),

          SizedBox(height: 50.0,),

          TextField(style: TextStyle(color: Color(0xff000000),),
            decoration: InputDecoration(hintText: "Enter Address ",
              filled: true,
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
            ),
          ),

          SizedBox(height: 50.0,),

          TextField(style: TextStyle(color: Color(0xff000000)),
            decoration: InputDecoration(hintText: "Enter Phone Number ",
              filled: true,
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
            ),
          ),

          SizedBox(height: 50.0,),

          MaterialButton(color: Color(0xff1DA1F2) ,child: Text('Confirm'),
             onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => Profile() ), );
            },),

          SizedBox(height: 50.0,),
        ]),
        ]
      ),
    );
  }
}

