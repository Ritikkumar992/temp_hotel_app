import 'package:flutter/material.dart';
import 'package:hotel_app/screen/home.dart';


class SignUpApp extends StatefulWidget {
  const SignUpApp({super.key});

  @override
  State<SignUpApp> createState() => _SignUpAppState();
}

class _SignUpAppState extends State<SignUpApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Page"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Full Name",
                      hintText: "Name",
                      border: OutlineInputBorder()
                  ),
                  onChanged: (String email){},
                  validator: (email){
                    if(email!.isEmpty){
                      return "Please Enter Your Full Name";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      hintText: "Email @",
                      border: OutlineInputBorder()
                  ),
                  onChanged: (String email){},
                  validator: (email){
                    if(email!.isEmpty){
                      return "Please Enter Your Email";
                    }else{
                      return null;
                    }
                  },
                ),SizedBox(height: 30),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      hintText: "Phone number",
                      border: OutlineInputBorder()
                  ),
                  onChanged: (String email){},
                  validator: (email){
                    if(email!.isEmpty){
                      return "Please Enter Your Phone Number";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 30),
                MaterialButton(
                  height: 50,
                  minWidth: double.infinity,
                  color: Colors.deepPurple,
                  child: Text("Register", style: TextStyle(color: Colors.white, fontSize: 20.0)),
                  onPressed: (){ // ------------------------  NAVIGATOR PUSH ------------------
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:(context) => HomePage(),
                        )
                    );
                  },
                )

              ]
          ),
        ),
      ),
    );
  }
}
