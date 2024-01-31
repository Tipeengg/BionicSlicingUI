import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    bool isAgree = false;

    return Scaffold(
      body: Center(
        child: Container(
          width: size.width / 1.1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lorem Ipsum",
                style: TextStyle(fontSize: 30.0),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Name",
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Email",
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: "Password",
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: isAgree,
                    onChanged: (value) {
                      isAgree = value ?? false;
                    },
                  ),
                  Text("Remember"),
                  SizedBox(width: 150),
                  Text("Lorem Ipsun?")
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.purple,
                ),
                width: size.width / 2,
                child: TextButton(
                  child: Text(
                    "Start",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mainHome');
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 300,
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                  maxLines: 2,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: Center(
                  child: Text(
                    "More Password",
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
