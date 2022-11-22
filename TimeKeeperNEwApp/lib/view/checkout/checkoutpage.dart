import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myshop_app/view/checkout/placeorder.dart';

class CheckoutPage extends StatefulWidget {
  CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  static const routeName = '/CheckOutPage';
  final borderoutline = OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
      borderSide: new BorderSide(color: Colors.amber));
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    print("CheckOut Page");

    return Scaffold(
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(


        child: Container(
          
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "CheckOut Form",
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
                      "Customer Information",
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
                              return 'Enter Your Full Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.amber,
                              ),
                              hintText: 'Full Name',
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
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter Your Email Address';
                            }
                            // Check if the entered email has the right format
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Enter a Valid Email Address';
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
                              border: borderoutline),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),




                      Text(
                        "Delivery Information",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
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
                              return 'Enter Address';
                            }

                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.home,
                                color: Colors.amber,
                              ),
                              hintText: 'Address',
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
                          // obscureText: true,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter City Name';
                            }

                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.location_city,
                                color: Colors.amber,
                              ),
                              hintText: 'City',
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
                          // obscureText: true,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter Country Name';
                            }

                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.map,
                                color: Colors.amber,
                              ),
                              hintText: 'Country',
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
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Enter Pincode';
                            }

                            // Return null if the entered password is valid
                            return null;
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.numbers,
                                color: Colors.amber,
                              ),
                              hintText: 'PinCode',
                              border: borderoutline),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        height: 10,
                      ),



                      Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    // builder: (context) => Productgridpage()));
            
                                    builder: (context) => PlaceOrderPage()));
                          }
                        },
                        // color: Colors.amber,
                        color: Theme.of(context).colorScheme.primary,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Text(
                          "Place Order",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                    ],
                  ),
                ),
                




              ],
            ),
          ),
        ),
      ),
    );
  }
}
