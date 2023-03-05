
import 'package:books/pages/signup_screen.dart';
import 'package:books/pages/user_page.dart';
import 'package:flutter/material.dart';

import '../components/reusable_button.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formkey=GlobalKey<FormState>();
  final _usernameController= TextEditingController();
  final _passwordController= TextEditingController();
  final _usernameFocusNode= FocusNode();


  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * .07,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                      child: Image.asset( 'assets/images/bookapp_pic.png', fit: BoxFit.cover,)),
                ),
              ),
            ),
        Form(
            key: _formkey,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SizedBox(height: height * .07,),
                  TextFormField(
                    controller: _usernameController,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(height: height * .05,),
                  TextFormField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
        ),
            SizedBox(height: height *.08,),
                 ReusableButton(title: 'Login', onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UserPage()));
                 }, height: 50,),
            SizedBox(height: height *.005,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                const Text(" Need an account? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage()));
                      },
                      child: const Text(" Sign Up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
              ],),
            ),

          ],
        ),
      ) ,
    );
  }
}
