import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:SewNotes/login.dart';
import 'package:SewNotes/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(right: 120, bottom: 30),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Color(0xffD9534F),
                  fontSize: 40,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: <Widget>[
                        const TextField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff96CEB4),
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff96CEB4),
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff96CEB4),
                              ),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.white),
                            hintText: "email",
                            fillColor: Color(0xff96CEB4),
                          ),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff96CEB4),
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff96CEB4),
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff96CEB4)),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: "password",
                              fillColor: Color(0xff96CEB4)),
                          style: TextStyle(color: Colors.white),
                        ),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff96CEB4),
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff96CEB4),
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xff96CEB4)),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: "confirm password",
                              fillColor: Color(0xff96CEB4)),
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have account? ",
                              style: TextStyle(
                                fontSize: 10,
                              ),
                            ),
                            TextButton(
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Login(),
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      backgroundColor: Color(0xffFFAD60),
                    ),
                    child: const Text(
                      "sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
