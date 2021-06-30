import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'QrCode.dart';
import 'package:image_picker/image_picker.dart';

class Profile extends StatefulWidget {
  @override
  ProfileState createState() => ProfileState();
}
class ProfileState extends State<Profile> {
  Widget img = FlutterLogo();
  String name = "Ro3b";
  String address = "Cairo";
  String mail = "MFNTZM@gmail.com";
  String phoneNum = "0112358 ";
  String iD = "2991012100832";

  bool boolName = false ;
  bool booladdress = false ;
  bool boolmail = false ;
  bool boolphone = false ;

  final TextEditingController namecontroller = TextEditingController() ;
  final TextEditingController addresscontroller = TextEditingController() ;
  final TextEditingController mailcontroller = TextEditingController() ;
  final TextEditingController phonenumcontroller = TextEditingController() ;



  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      // user must tap button!
      builder: (BuildContext context) {
        return  AlertDialog(
          content:Container(width: 200,height :200,child: Image.asset("Images/CAD_9876.JPG") ,),
          actions: [IconButton(icon:Icon(Icons.edit,), iconSize:45.0,
            onPressed: () {
              ImagePicker().getImage(source: ImageSource.gallery);
            },
          ),],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold( backgroundColor: Color(0xffffffff),
      body: ListView(children: [
        SizedBox(height: 50.0,),

        // TITLE (PROFILE) #########################################

        Center(
              child: Text("Profile",
                style:TextStyle(fontSize: 35.0,fontWeight: FontWeight.bold),
              ),
            ),

        SizedBox(height: 25.0,),

        //STACK => PROFILE PIC(BUTTON) /  QR CODE ICON BUTTON ##############

        Center(child: Stack(alignment: AlignmentDirectional.bottomEnd,
          children: [MaterialButton(onPressed: (){



            _showMyDialog();

             AlertDialog(
                  content: Image.asset("Images/CAD_9876.JPG"),
                 actions: [IconButton(icon:Icon(Icons.edit,), iconSize:45.0,
                  onPressed: () {
                    ImagePicker().getImage(source: ImageSource.gallery);
                  },
                ),],
               );





          },
              child: CircularProfileAvatar(null,child: FlutterLogo(),
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

        /* INFO 1 CONTAINER HAS (1 BIG COLUMN HAS (4 LIL COLUMNS EACH HAS
        (2 ROWS (1 ROW DESCRIPTION, 1 ROW INFO + BUTTON) ) ) ) ################
        */

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
                        Text(name, style:TextStyle(fontSize: 20.0),),

                        TextButton(child: Text('Update'),
                          style: TextButton.styleFrom(
                            textStyle:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                                color:Color(0xff1DA1F2)),
                          ),
                          onPressed: () {
                            if (boolName== false)
                              setState(() {
                                boolName = true ;
                              });
                            else
                              setState(() {
                                if (namecontroller.text != '')
                                  name = namecontroller.text;
                                boolName = false ;
                              });
                          },),
                      ],
                    ),
                    Visibility(visible: boolName,child:
                      TextField(style: TextStyle(color: Color(0xff000000),),
                        decoration: InputDecoration(hintText: "Enter Nickname ",
                        filled: true,
                        fillColor: Color(0xffffffff),border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                      ),
                         controller: namecontroller,
                    ),),
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
                        style:TextStyle(fontSize: 20.0),),

                        TextButton(child: Text('Update'),
                          style: TextButton.styleFrom(
                            textStyle:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                                color:Color(0xff1DA1F2)),
                          ),
                          onPressed: () {
                            if (booladdress== false)
                              setState(() {
                                booladdress = true ;
                              });
                            else
                              setState(() {
                                if (addresscontroller.text != '')
                                  address = addresscontroller.text;
                                booladdress = false ;
                              });
                          },),
                      ],
                    ),
                    Visibility(visible: booladdress,child:
                      TextField(style: TextStyle(color: Color(0xff000000),),
                        decoration: InputDecoration(hintText: "Enter Address ",
                        filled: true,
                        fillColor: Color(0xffffffff),border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                      ),
                        controller: addresscontroller,
                    ),),
                  ],
                ),

                SizedBox(height: 10.0,),

                Column(
                  children: [
                    Row(
                      children: [Text("E-Mail ", style:
                      TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,
                          color: Color(0xffA8A8A8)),),
                      ],
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text(mail,
                        style:TextStyle(fontSize: 20.0),),

                        TextButton(child: Text('Update'),
                          style: TextButton.styleFrom(
                            textStyle:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                                color:Color(0xff1DA1F2)),
                          ),
                          onPressed: () {
                            if (boolmail== false)
                              setState(() {
                                boolmail = true ;
                              });
                            else
                              setState(() {
                                if (mailcontroller.text != '')
                                  mail = mailcontroller.text;
                                boolmail = false ;
                              });
                          },),
                      ],
                    ),
                    Visibility(visible: boolmail,child:
                      TextField(style: TextStyle(color: Color(0xff000000),),
                        decoration: InputDecoration(hintText: "Enter Mail ",
                        filled: true,
                        fillColor: Color(0xffffffff),border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                      ),
                        controller: mailcontroller,
                    ),),
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
                        style:TextStyle(fontSize: 20.0,),),

                        TextButton(child: Text('Update'),
                          style: TextButton.styleFrom(
                            textStyle:TextStyle(fontSize: 20,fontWeight:FontWeight.bold,
                                color:Color(0xff1DA1F2)),
                          ),
                          onPressed: () {
                          if (boolphone== false)
                            setState(() {
                              boolphone = true ;
                            });
                          else
                            setState(() {
                              if (phonenumcontroller.text != '')
                                phoneNum = phonenumcontroller.text;
                              boolphone = false ;
                            });
                          },),
                      ],
                    ),
                    Visibility(visible: boolphone,child:
                      TextField(style: TextStyle(color: Color(0xff000000),),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "Enter PhoneNumber ",
                        filled: true,
                        fillColor: Color(0xffffffff),border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0),),
                        ),
                      ),
                        controller: phonenumcontroller,
                    ),),
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
                        Text(iD, style:TextStyle(fontSize: 20.0,),),

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
