import 'package:flutter/material.dart';
import 'package:quiz_app/screens/signup.dart';
import 'package:quiz_app/views/widgets.dart';
class Login extends StatefulWidget {
  //const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey=GlobalKey<FormState>();
  String email,password;
  Login(){
    if(_formKey.currentState.validate()){

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBar(context),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
      ),
      body: Form(
        key: _formKey,
        child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Spacer(),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              validator: (val){
                return val.isEmpty ? "Enter correct Email Id" : null;
              },
              decoration: InputDecoration(hintText: "Email",),
              onChanged: (val){
                email=val;
              },
            ),
            SizedBox(height: 6,),
            TextFormField(
              validator: (val){return val.isEmpty ? "This field can't be empty" : null;},
              decoration: InputDecoration(hintText: "Password",),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              onChanged: (val){
                password=val;
              },
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap:(){
                Login();
                },
              child: Container(
                
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(35),

                ),
                width: MediaQuery.of(context).size.width-46,
                child: Text("Login!!",style: TextStyle(color: Colors.white,fontSize: 16),),
                alignment: Alignment.center,

              ),
            ),
            SizedBox(height: 24,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style: TextStyle(fontSize: 15),),
                GestureDetector(
                  onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context)=>SignUp(),
                  ),
                  );
                  },
                child:Text("Sign Up",style: TextStyle(fontSize: 15,decoration: TextDecoration.underline),),
                ),
              ],
            ),
            SizedBox(height: 80,),
            
          ],
        ),
      ),
      ) ,
      
    );
  }
}