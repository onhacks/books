import 'package:books/components/view_book_button.dart';
import 'package:books/pages/view_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final _searchController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
    appBar: AppBar(
      leading: const Icon(
        Icons.menu,
      ),
      title:  TextFormField(
        controller: _searchController,
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.search ,color: Colors.white,),
          hintText: 'Search',
          hintStyle: TextStyle(
              color: Colors.white,
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 15),
          child:Icon(Icons.mode_comment),),
      ],
    ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
          return ViewBookButton(title: 'The KiteRunner', author: 'DK', genre: 'Suspense', image: 'assets/images/bookapp_pic.png', onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BookDetailsPage()));
          });
        }),
      ),
    );
  }
}
