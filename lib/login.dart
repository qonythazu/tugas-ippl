import 'package:email_validator/email_validator.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;
import 'package:sewnotes/register.dart';
import 'package:sewnotes/home.dart';

class Login extends StatefulWidget {
  const Login({super.key, this.suffixIcon});
  final List<Widget>? suffixIcon;

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var emaillogin = TextEditingController();
  var passwordlogin = TextEditingController();
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 120, bottom: 30),
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 40,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                      child: TextFormField(
                        controller: emaillogin,
                        validator: (email) {
                          if (email != null &&
                              EmailValidator.validate(email)) {
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
                      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                      child: TextFormField(
                        controller: passwordlogin,
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
                                  icon: Builder(builder: (context){
                                    if (showPassword) {
                                      return const Icon(Icons.visibility_off);
                                    } else {
                                      return const Icon(Icons.visibility);
                                    }
                                  }
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      showPassword = !showPassword;
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
                        obscureText: !showPassword,
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // loginFunc();
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Home(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          backgroundColor: Theme.of(context).primaryColor,
                        ),
                        child: const Text(
                          "sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account? ",
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                        TextButton(
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  loginFunc() async {
    if(emaillogin.text.isEmpty || passwordlogin.text.isEmpty){
      Alert(
        context: context, 
        title: "Data tidak diisi dengan benar",
        type: AlertType.error
      ).show();
      return;
    }
    ProgressDialog progressDialog = ProgressDialog(context);
    progressDialog.style(message: 'Loading...');
    progressDialog.show();
    var url = Uri.http('192.168.1.19', 'sewnotes/user');
    var response = await http.post(
      url, 
      body: {
        'email': emaillogin.text, 
        'password': passwordlogin.text
      }
    );
    progressDialog.hide();
    if(response.statusCode == 200) {
      Alert(
        context: context,
        title: "Login Berhasil",
        type: AlertType.success
      ).show();
    }else{
      Alert(
        context: context,
        title: "Login Gagal",
        type: AlertType.error
      ).show();
    }
  }

}
