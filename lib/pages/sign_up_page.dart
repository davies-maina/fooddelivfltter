import 'package:flutter/material.dart';
import 'package:food_delivery/pages/sign_up_page.dart';
import 'package:food_delivery/pages/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

bool isVisible = false;

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign up",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _buildUsernameTextField(),
                      _buildEmailTextField(),
                      _buildPasswordTextField(),
                      _buildConfirmPasswordTextField()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 50,
                // margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Text("Sign up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15))),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25)),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignInPage()));
                  },
                  child: ListTile(
                    leading: Text("Have an account?"),
                    title: Text(
                      "Log in",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    dense: true,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUsernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Username',
          hintText: "type username",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
    );
  }

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Your email',
          hintText: "Email",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16)),
    );
  }

  Widget _buildPasswordTextField() {
    return TextFormField(
      obscureText: isVisible,
      decoration: InputDecoration(
          labelText: 'Your Password',
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
          suffixIcon: GestureDetector(
            child:
                isVisible ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            onTap: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
          )),
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'confirm Password',
        hintText: " confirm Password",
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }
}
