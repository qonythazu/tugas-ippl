import 'dart:convert';
import 'dart:io';

import 'package:email_validator/email_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:sewnotes/login.dart';
import 'package:sewnotes/home.dart';
import 'package:http/http.dart' as http;

registerFunc(String email, String password) async {
  var url = Uri.http('192.168.1.19', 'sewnotes/user');
  var response =
      await http.post(url, body: {'email': email, 'password': password});
  Map result = json.decode(response.body);

  if (result['status'] == 1) {
    return "True";
  } else {
    return "False";
  }
}

class Register extends StatefulWidget {
  const Register({super.key, this.suffixIcon});
  final List<Widget>? suffixIcon;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var emailregis = TextEditingController();
  var passwordregis = TextEditingController();
  var confirmpasswordregis = TextEditingController();
  bool showPasswordPass = false;
  bool showConfirmPasswordPass = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 120, bottom: 30),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 40,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: TextFormField(
                        controller: emailregis,
                        validator: (email) {
                          if (email != null && EmailValidator.validate(email)) {
                            return null;
                          }
                          return "Invalid email address";
                        },
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            labelText: "Email",
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "example@gmail.com",
                            hintStyle: TextStyle(
                                color: Theme.of(context).primaryColor)),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: TextFormField(
                        controller: passwordregis,
                        validator: (password) {
                          if (password != null) {
                            return null;
                          }
                          return "Input your password coy!";
                        },
                        decoration: InputDecoration(
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  icon: Builder(builder: (context) {
                                    if (showPasswordPass) {
                                      return const Icon(Icons.visibility_off);
                                    } else {
                                      return const Icon(Icons.visibility);
                                    }
                                  }),
                                  onPressed: () {
                                    setState(() {
                                      showPasswordPass = !showPasswordPass;
                                    });
                                  },
                                ),
                                ...widget.suffixIcon ?? [],
                              ],
                            ),
                            prefixIcon: const Icon(Icons.lock),
                            labelText: "Password",
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                color: Theme.of(context).primaryColor)),
                        obscureText: !showPasswordPass,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 8.0),
                      child: TextFormField(
                        controller: confirmpasswordregis,
                        validator: (password) {
                          if (password != null) {
                            return null;
                          }
                          return "Input your password coy!";
                        },
                        decoration: InputDecoration(
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                IconButton(
                                  icon: Builder(builder: (context) {
                                    if (showConfirmPasswordPass) {
                                      return const Icon(Icons.visibility_off);
                                    } else {
                                      return const Icon(Icons.visibility);
                                    }
                                  }),
                                  onPressed: () {
                                    setState(() {
                                      showConfirmPasswordPass =
                                          !showConfirmPasswordPass;
                                    });
                                  },
                                ),
                                ...widget.suffixIcon ?? [],
                              ],
                            ),
                            prefixIcon: const Icon(Icons.lock),
                            labelText: "Confirm Password",
                            filled: true,
                            fillColor: Colors.white,
                            hintStyle: TextStyle(
                                color: Theme.of(context).primaryColor)),
                        obscureText: !showConfirmPasswordPass,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (passwordregis.text == confirmpasswordregis.text &&
                            EmailValidator.validate(emailregis.text)) {
                          var result = await registerFunc(
                              emailregis.text, passwordregis.text);

                          if (result == "True") {
                            Alert(
                                  context: context,
                                  title: "Account Created Successfully",
                                  type: AlertType.success)
                              .show();
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          } else if (result == "False") {
                              Alert(
                                  context: context,
                                  title: "Account Creation Failed",
                                  type: AlertType.error)
                              .show();
                          }
                        } else if (passwordregis.text !=
                            confirmpasswordregis.text) {
                              Alert(
                                  context: context,
                                  title: "Password Doesn't Match",
                                  type: AlertType.error)
                              .show();
                        } else {
                              Alert(
                                  context: context,
                                  title: "Email Not Valid",
                                  type: AlertType.error)
                              .show();
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                      child: const Text(
                        "sign up",
                        style: TextStyle(color: Colors.white),
                      ),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
