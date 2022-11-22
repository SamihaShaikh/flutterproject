import 'package:flutter/material.dart';
import 'package:myshop_app/view/dashborad/loginPage.dart';
import 'package:myshop_app/view/dashborad/signupPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final buttonShape = RoundedRectangleBorder(
      side: const BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(50));
  final style =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 25);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    print("HomePage");
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff80764E),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/tklogo.png"))),
              ),
              Column(
                children: <Widget>[
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 55,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    color: color,
                    shape: buttonShape,
                    child: Text(
                      "Login",
                      style: style,
                    ),
                  ),
                  // creating the signup button
                  const SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 55,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    color: color,
                    shape: buttonShape,
                    child: Text(
                      "Sign up",
                      style: style,
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
