
import 'package:flutter/material.dart';
import 'package:loginscreen/timelines.dart';

import 'SignUp.dart';


class LoginScreen extends StatelessWidget {

  var EmailController =TextEditingController();
  var PasswordController =TextEditingController();

  bool _Show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Login Screen"),
        leading: Icon(Icons.login),
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 40,),
                //Email adress
                TextFormField(
                  controller: EmailController,
                  keyboardType:TextInputType.emailAddress,
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Email address",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 15,),
                //Password
                TextFormField(
                  controller: PasswordController,
                  keyboardType:TextInputType.visiblePassword,
                   obscureText: true ,  // to hidden password
                  onFieldSubmitted: (value){   //عشان لما ادخل القيمه تظهرلي تحت هنا ف run
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                        Icons.lock),
                    suffixIcon:
                    Icon(
                        Icons.remove_red_eye),
                  ),
                ),
                SizedBox(height: 15,),
                // Login Button
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: (){
                    print(EmailController.text);
                    print(PasswordController.text);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Posts()));


                  },
                  child: Text("LOGIN"
                  ,style: TextStyle(color: Colors.white),
                  ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("don't have account?"),
                    TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp()));

                        },
                        child: Text("Regester Now"),
                      ) ,
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
