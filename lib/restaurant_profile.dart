import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
class RestaurantProfile extends StatefulWidget {
  @override
  State<RestaurantProfile> createState() => _ProfileState();
}

class _ProfileState extends State<RestaurantProfile> {
  File? _image;
  Future getImage(ImageSource source) async {
    try{
      final image = await ImagePicker().pickImage(source: source);
      if( image == null) return;

      final imageTemporary = File(image.path);
      setState((){
        this._image = imageTemporary;
      });
    } on PlatformException catch(e){
      print("Failed to pick image");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Profile'),centerTitle:true,),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Center(
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80.0,
                      backgroundColor: Colors.white,
                      child: ClipRect(
                        child: _image != null? Image.file(_image!, width: 200,height: 200,fit: BoxFit.cover,):Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTERu43nfzwT47gQ7CmjG_omEWGbNgkF6a0nnpjj8IW&s',height: 200,width: 200,),
                      ),
                    ),
                    Positioned(
                      bottom: 20.0,
                      right: 20.0,
                      child: IconButton(
                        onPressed: (){
                          print('hello 1');
                          getImage(ImageSource.gallery);
                        },
                        icon: Icon(Icons.camera,size: 50,),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Mr. Jon Korim',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '106/2, Dhaka, Bangladesh',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.green,),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        hintText: 'Address ',
                        prefixIcon: Icon(Icons.home),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.green,),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        hintText: 'Current Password ',
                        prefixIcon: Icon(Icons.password),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Colors.green,),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        hintText: 'New Password ',
                        prefixIcon: Icon(Icons.password),
                      ),
                    ),
                    Container(
                        height: 70,
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: ElevatedButton(
                          child: const Text(
                            'Done',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {


                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget profileText(){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Text(
              'Login Status',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              style: TextStyle(color: Colors.green),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                ),
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

