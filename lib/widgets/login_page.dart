import 'package:expressmed_patient_app/widgets/boarding_page.dart';
import 'package:expressmed_patient_app/widgets/sign_up.dart';
import 'package:flutter/material.dart';
import '../components/my_button.dart';
import '../components/square_tile.dart';
import '../components/text_fields.dart';


class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // user sign in method
  void userSignIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan[100],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                //  expressmed logo
                Image.asset(
                  "assets/img_1.png",
                  width: 80,
                ),
                SizedBox(
                  height: 50,
                ),
                // welcome back
                Text(
                  "Welcome back!",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 25),

                //  username text field
                MyTextField(
                  controller: usernameController,
                  hintText: "Username",
                  obscureText: false,
                ),

                SizedBox(height: 10),

                //  password field
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                SizedBox(height: 10),

              // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Forgot password?", style: TextStyle(
                          color:Colors.blueGrey),),
                    ],
                  ),
                ),
                SizedBox(height: 25),

                MyButton(
                  onTap: userSignIn,
                ),
                SizedBox(height: 50),

              //  or continue with..
              //  we will use a divider
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text("Or continue with",
                          style: TextStyle(color: Colors.blueGrey)
                        ),
                      ),

                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),

                // using google to sign in
                // google:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                  //  google button
                    SquareTile(imagePath: "assets/google_.png",),                 ],
                ),

                SizedBox(height: 50
                ),

              //  not a member, register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?"),
                    SizedBox(width: 4
                    ),
                    GestureDetector(
                      child: Text("Register now", style: TextStyle(
                          color:Colors.blue,fontWeight: FontWeight.bold),),
                      onTap:(){ navigateToSignUpPage(context);},
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
Future navigateToSignUpPage(context) async{
  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
}
