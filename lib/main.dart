import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:my_ngo/ngos.dart';
import 'package:my_ngo/otherpublic.dart';
import 'package:my_ngo/restaurant.dart';
import 'package:my_ngo/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My NGO'),
        ),
        body: MyStatefullWidget(),
      ),
    );
  }
}

class MyStatefullWidget extends StatefulWidget {
  @override
  State<MyStatefullWidget> createState() => _MyStatefullWidgetState();
}

class _MyStatefullWidgetState extends State<MyStatefullWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  bool _isObscure = true;
  int user_radio_valu = 0;

  void userSelectRadio(value){
    setState((){
      user_radio_valu = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: const Text(
              'Welcome to My NGO Apps',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
              'Login Status',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          userRadio(),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            alignment: Alignment.center,
            child: TextField(
              controller: nameController,
              style: TextStyle(color: Colors.green),
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                ),
                hintText: 'Email',
                prefixIcon: Icon(Icons.email),
              ),
            ),
          ),



          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: TextField(
              controller: passController,
              obscureText: _isObscure,
              style: TextStyle(color: Colors.green),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(onPressed: (){
                    setState((){
                      _isObscure = !_isObscure;
                    });
                  },icon: Icon(Icons.remove_red_eye),)
              ),
            ),
          ),


          Container(
              height: 70,
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: ElevatedButton(
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  switch(user_radio_valu){
                    case 1: {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NGOS()),);
                      break;
                    }
                    case 2: {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Restaurant()),);
                      break;
                    }
                    case 3: {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OtherPublic()),);
                      break;
                    }

                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                ),
              )),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                Text("Don't have accound ?",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()),);
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget userRadio(){
    return Row(
      children: <Widget>[
        Radio(
            value: 1,
            groupValue: user_radio_valu,
            onChanged: (value){
              userSelectRadio(value);
            }
        ),
        Text('NGO'),
        Radio(
            value: 2,
            groupValue: user_radio_valu,
            onChanged: (value){
              userSelectRadio(value);
            }

        ),
        Text('Restaurant'),
        Radio(
            value: 3,
            groupValue: user_radio_valu,
            onChanged: (value){
              userSelectRadio(value);
            }
        ),
        Text('Public user')
      ],
    );
  }
}
