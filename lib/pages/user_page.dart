import 'package:books/components/reusable_button.dart';
import 'package:books/pages/home_page.dart';
import 'package:books/pages/my_books_page.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('User Name'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        margin: const EdgeInsets.symmetric(vertical: 80, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Homepage()));
              },
              child: Container(
                height: height * .06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Align(
                    alignment: Alignment.center,
                    child: Text('Home', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.black), )),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyBooksPage()));
              },
              child: Container(
                height: height * .06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Align(
                    alignment: Alignment.center,
                    child: Text('My Books', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.black), )),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: height * .06,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Align(
                    alignment: Alignment.center,
                    child: Text('Reminder', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, color: Colors.black), )),
              ),
            ),
            ReusableButton(title: 'Log Out' , onPressed: () {}, height: height * .05)
          ],
        ),
      ),
    );
  }
}
