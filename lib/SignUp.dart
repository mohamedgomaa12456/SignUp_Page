import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _emailAdrees= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Text("Sign up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40
                  )
                  ,),
                ),
              ),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Your Name",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Your Email Adress",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.email),

                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Your PassWord",
                  border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility),
                  prefixIcon: Icon(Icons.lock)

                ),
              ),
              SizedBox(height: 40,),
              Container(
                color: Colors.blue,
                child: MaterialButton(onPressed: (){},
                child: Text("Sign Up",
                  style: TextStyle(color: Colors.white),
                ),

      ),
              )






            ],
          ),
        ),
      ),
    );
  }
}
