import 'package:flutter/material.dart';
import 'package:timekeepers/views/category/categorypage.dart';
import 'package:timekeepers/views/dashboard/signuppage.dart';

class Loginpage extends StatelessWidget {
   Loginpage({Key? key}) : super(key: key);

  static const routeName = '/LoginPage';
  final _formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print("Login");
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromARGB(255, 152, 134, 79),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Login to your account",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(right: 25, left: 25),
                  child: Column(
                    key: _formkey,
                    children: [
                      Material(
                        borderRadius: BorderRadius.circular(50),
                        elevation: 5,
                        shadowColor: Colors.amber,
                        child: TextFormField(
                          validator: (value){
                            if(value!.isEmpty ||  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value)){
                               return 'Enter Valid email';
                            }
                            else{
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
                        height: 12,
                      ),
                      Material(
                        borderRadius: BorderRadius.circular(50),
                        elevation: 5,
                        shadowColor: Colors.amber,
                        child: TextFormField(
                          validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter a valid password!';
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
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 55,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // builder: (context) => Productgridpage()));

                                builder: (context) => CategoryPage()));
                      },
                      // color: Colors.amber,
                      color: Theme.of(context).colorScheme.primary,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    GestureDetector(
                      child: const Text(
                        " Sign up",
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Signuppage()));
                      },
                    )
                  ],
                ),
              ],
            )));
  }
}

Widget inputFile({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.amber))),
      ),
      SizedBox(
        height: 10,
      )
    ],
  );
}
