import 'package:flutter/material.dart';

import '../components/reusable_button.dart';
import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final _usernameController= TextEditingController();
  final _passwordController= TextEditingController();
  final _firstNameController= TextEditingController();
  final _lastNameController= TextEditingController();
  final _emailController= TextEditingController();
  final _studentIdController= TextEditingController();
  final _universityNameController= TextEditingController();

  final _usernameFocusNode= FocusNode();


  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _studentIdController.dispose();
    _universityNameController.dispose();
    _usernameFocusNode.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height * .05,),
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      decoration: const InputDecoration(
                        hintText: 'Username',
                      ),
                    ),
                    TextFormField(
                      controller: _firstNameController,
                      decoration: const InputDecoration(
                        hintText: 'First Name',
                      ),
                    ),

                    TextFormField(
                      controller: _lastNameController,
                      decoration: const InputDecoration(
                        hintText: 'Last Name',
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                      obscureText: true,
                    ),
                    TextFormField(
                      controller: _universityNameController,
                      decoration: const InputDecoration(
                        hintText: 'University Name',
                      ),
                    ),
                    TextFormField(
                      controller: _studentIdController,
                      decoration: const InputDecoration(
                        hintText: 'Student ID',
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(height: height *.03,),
            ReusableButton(title: 'Register', onPressed: (){}, height: 50,),
            SizedBox(height: height *.005,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                      onTap: () {
                        Navigator.of(context).push( MaterialPageRoute( builder:(context) => const LoginPage()));
                      },
                      child: const Text("Login", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),))
                ],),
            ),

          ],
        ),
      ) ,
    );
  }
}
