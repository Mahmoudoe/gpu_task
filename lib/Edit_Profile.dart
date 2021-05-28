import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:gpu_task/Profile.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  @override
  EditProfileState createState() => EditProfileState();
}
class EditProfileState extends State<EditProfile> {

  //PickedFile img = ImagePicker().getImage(source: ); ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      // No app bar
      body: ListView(children: [
        Column(children: [
          SizedBox(height: 50.0,),
          MaterialButton(onPressed: (){},
            child: CircularProfileAvatar(null,
              child: FlutterLogo(),
              borderWidth: 2.5,
              borderColor: Color(0xffA8A8A8),
              elevation: 5,
              radius: 100,
            ),
          ),

          SizedBox(height: 50.0,),
          TextField(style: TextStyle(color: Color(0xff000000),),
            decoration: InputDecoration(hintText: "Enter Nickname ",
              filled: true,
              fillColor: Color(0xffffffff), border:OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
            ),
          ),

          SizedBox(height: 50.0,),
          TextField(style: TextStyle(color: Color(0xff000000),),
            decoration: InputDecoration(hintText: "Enter Address ",
              filled: true,
              fillColor: Color(0xffffffff),border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0),),
              ),
            ),
          ),

          SizedBox(height: 50.0,),
          TextField(style: TextStyle(color: Color(0xff000000)),
            decoration: InputDecoration(hintText: "Enter Phone Number ",
              filled: true,
              fillColor: Color(0xffffffff),border: OutlineInputBorder(
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

        ]),
        ]
      ),
    );
  }
}

