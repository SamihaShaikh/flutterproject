import 'package:flutter/material.dart';
import 'package:myshop_app/view/category/category_Overview.dart';
import 'package:myshop_app/view/checkout/checkoutpage.dart';
import 'package:myshop_app/view/dashborad/homePage.dart';
import 'package:myshop_app/view/dashborad/signupPage.dart';
import 'package:myshop_app/view/prodcutPage/filterproductPage.dart';
import 'package:myshop_app/view/user_product_screen.dart';
import '../dashborad/loginPage.dart';
import '../order_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    print("app_drawer Page");

    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.amber,
            ),
            child: Text("Hello Samiha"),
          ),
          //Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryOverview()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('My Orders'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          // Divider(),
          // ListTile(
          //   leading: Icon(Icons.edit),
          //   title: Text('Manage Product'),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => UserProductScreen()),
          //     );
              
          //   },
          // ),
          Divider(),
          ListTile(
            leading: Icon(Icons.login),
            title: Text('LOG-IN'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('LOG OUT'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.filter),
            title: Text('Filter Product'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => FilterProduct()));
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.login_sharp),
            title: Text('Sign Up Page'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignUpPage()));
            },
          ),

          Divider(),
          ListTile(
            leading: Icon(Icons.check_circle_outlined),
            title: Text('Checkout Page'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CheckoutPage()));
            },
          ),
        ],
      ),
    );
  }
}
