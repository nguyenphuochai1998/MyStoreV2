

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState  createState() => _LoginPageState ();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    Size _sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/top_image_login.png"),
          ),
          Container(
            height: _sizeScreen.height*0.55,
            alignment: Alignment.center,
            child: Image.asset("assets/images/logo.png"),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child:
            Container(
              height: _sizeScreen.height*0.45,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                  color: Color(0xFFB0E057)
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: _sizeScreen.height*0.45*0.07,right: 40,left: 40),
                    height: 4,
                    color: Color(0xffFFFFFF),

                  ),
                  // buttom login with google
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 10, 50, 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: RaisedButton(
                        onPressed:(){

                        }
                        ,
                        child:
                        Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Image.asset("assets/images/ic_google.png"),
                          ),
                          Text(
                            "Đăng Nhập Với Google",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ],
                        ),

                        color: Color(0xFF337744),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                  // buttom login with facebook
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 10, 50, 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: RaisedButton(
                        onPressed:(){

                        }
                        ,
                        child:
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Image.asset("assets/images/ic_facebook.png"),
                            ),
                            Text(
                              "Đăng Nhập Với Google",
                              style: TextStyle(color: Color(0xFF353535), fontSize: 18),
                            ),
                          ],
                        ),

                        color: Color(0xFFFFFFFF),

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}