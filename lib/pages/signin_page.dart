import 'package:flutter/material.dart';
import 'package:food_delivery/pages/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

bool isVisible = false;

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign in",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot password ? ",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      _buildEmailTextField(),
                      _buildPasswordTextField()
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                // margin: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Text("Log in",
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
                        builder: (BuildContext context) => SignUpPage()));
                  },
                  child: ListTile(
                    leading: Text("Dont have an account?"),
                    title: Text(
                      "Sign up here",
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
}
