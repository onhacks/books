import 'package:books/components/mybooks_button.dart';
import 'package:books/pages/addnewbook_page.dart';
import 'package:flutter/material.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  State<MyBooksPage> createState() => _MyBooksPageState();
}

class _MyBooksPageState extends State<MyBooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('My Books'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddNewBookPage()));
                    },
                    child: const Icon(Icons.add))),
          ),
        ],
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
        return const MyBooksButton(image: 'assets/images/bookapp_pic.png', title: 'Title', author: 'Author',);
      }),
    );
  }
}
