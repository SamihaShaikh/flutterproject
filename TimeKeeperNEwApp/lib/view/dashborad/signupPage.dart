import 'package:flutter/material.dart';
import 'package:myshop_app/view/dashborad/loginPage.dart';

class SignUpPage extends StatelessWidget {
   SignUpPage({super.key});
  static const routeName = '/SignUpPage';
  final borderoutline=OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    new BorderSide(color: Colors.amber));
  final _formkey = GlobalKey<FormState>();

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
          child: Form(
            key: _formkey,
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
                        borderRadius: BorderRadius.circular(5),
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
                              border: borderoutline
                              ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5),
                        elevation: 5,
                        shadowColor: Colors.amber.withOpacity(0.8),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your email address';
                            }
                            // Check if the entered email has the right format
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.amber,
                              ),
                              hintText: 'Email',
                              border:borderoutline 
                                      ),
                        ),
                      ),
          
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5),
                        elevation: 5,
                        shadowColor: Colors.amber.withOpacity(0.8),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length <10) {
                              return 'Password must be at least 8 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.amber,
                              ),
                              hintText: 'Mobile',
                              border: borderoutline),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5),
                        elevation: 5,
                        shadowColor: Colors.amber.withOpacity(0.8),
                        child: TextFormField(
                           obscureText: true,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.amber,
                              ),
                              hintText: 'Password',
                              border: borderoutline),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(5),
                        elevation: 5,
                        shadowColor: Colors.amber.withOpacity(0.8),
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.amber,
                              ),
                              hintText: 'Confirm Password',
                              border: borderoutline),
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
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                       if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // builder: (context) => Productgridpage()));
            
                                    builder: (context) => LoginPage()));
                          }
                      },
                      color: Colors.amber,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(5)),
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
                            MaterialPageRoute(builder: (context) => LoginPage()));
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
      ),
    );
  }
}
