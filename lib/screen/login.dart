import 'package:flutter/material.dart';
import 'package:hotel_app/screen/home.dart';
import 'package:hotel_app/screen/signUp.dart';

class LoginApp extends StatefulWidget {
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      hintText: "Email @",
                      border: OutlineInputBorder()),
                  onChanged: (String email) {},
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Please Enter Your Email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      hintText: "Phone number",
                      border: OutlineInputBorder()),
                  onChanged: (String email) {},
                  validator: (email) {
                    if (email!.isEmpty) {
                      return "Please Enter Your Email";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(height: 30),
                MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  color: Colors.deepPurple,
                  child: Text("Login",
                      style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  onPressed: () {
                    // ------------------------  NAVIGATOR PUSH ------------------
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                ),
                SizedBox(height: 20),
                const Text(
                  "Do not have an Account?",
                  style: TextStyle(fontSize: 22.0),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpApp(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
