import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:notesapp/dash/landing_screen.dart';

// todo 1 stateful class
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  //todo 2 make formkey, email, password, login variables
  //todo 3 checked if login exists and if it does go to dash
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Gap(40),
                  Text("Welcome", style: TextStyle(fontSize: 32)),
                  Gap(30),
                  //todo 4 Make Form Here with email + password
                  //todo 5 add decoration and onsaved for fields
                  TextFormField(
                    decoration: InputDecoration(hintText: "Username"),
                  ),
                  Gap(20),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  Gap(40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      //todo 6 async firebase auth function to check for any response
                      //todo 7 show data in SnackBack
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const LandingScreen(),
                        ));
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                  Gap(20),
                  TextButton(onPressed: () {

                  }, child: Text("Forgot Password?"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
