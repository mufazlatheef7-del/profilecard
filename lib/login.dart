import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Login extends StatefulWidget {
  const new({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formkey=GlobalKey<FormState>();
  final username=TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,

      ),
      
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text("Username"),
              ),
              SizedBox(height: 3,),
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                  hintText: 'Enter Username',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                ),
              ),
              SizedBox(height: 10,),
              Align
              (alignment: Alignment.centerLeft, 
              child: Text("Password")),
              SizedBox(height: 3,),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  )
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                onPressed: (){
                  if(username.text=="admin"&&password.text=="1234"){
            Navigator.pushReplacement(
                    context, MaterialPageRoute(
                      builder: (context)=>Home()
                      ),
                      );
                  }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('incorrect username or password')));
                }
                 
                },
                child: Text("Login"))
            ],
          )),
        ),
    );
  }
}