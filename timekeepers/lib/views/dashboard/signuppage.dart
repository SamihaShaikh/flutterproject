import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timekeepers/views/dashboard/loginpage.dart';

class Signuppage extends StatelessWidget {
  const Signuppage({Key? key}) : super(key: key);
  static const routeName = '/SignUpPage';

  @override
  Widget build(BuildContext context) {
    print("Sign Up page");
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign up to your account",
                    style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(right: 5, left: 5),
                child: Column(
                  children: [
                    // CircleAvatar(
                    //   radius: 50.0,
                    //   backgroundImage: AssetImage("assets/images/image.png"),
                    // ),
                    const SizedBox(
                      height: 12,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 5,
                      shadowColor: Colors.amber.withOpacity(0.8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.amber,
                            ),
                            hintText: 'Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 5,
                      shadowColor: Colors.amber.withOpacity(0.8),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                  .hasMatch(value)) {
                            return 'Enter Valid email';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.amber,
                            ),
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    new BorderSide(color: Colors.amber))),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 5,
                      shadowColor: Colors.amber.withOpacity(0.8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: Colors.amber,
                            ),
                            hintText: 'Mobile',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    new BorderSide(color: Colors.amber))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 5,
                      shadowColor: Colors.amber.withOpacity(0.8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.amber,
                            ),
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    new BorderSide(color: Colors.amber))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(50),
                      elevation: 5,
                      shadowColor: Colors.amber.withOpacity(0.8),
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.amber,
                            ),
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide:
                                    new BorderSide(color: Colors.amber))),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    },
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Already have an account?"),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    },
                    child: Text(
                      " Login",
                      style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
