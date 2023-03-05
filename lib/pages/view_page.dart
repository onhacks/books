import 'package:books/components/borrow_request_pop-up.dart';
import 'package:books/components/reusable_button.dart';
import 'package:flutter/material.dart';

class BookDetailsPage extends StatefulWidget {
  const BookDetailsPage({Key? key}) : super(key: key);

  @override
  State<BookDetailsPage> createState() => _BookDetailsPageState();
}

class _BookDetailsPageState extends State<BookDetailsPage> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Book Details'),
        centerTitle: true ,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:Container(
                height: height * .12,
                width: width * .3,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),

              const Text('Title', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const Text('Author', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const Text('Book Genre',style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const Text('Publication Date', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const Text('Book State',style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const Text('Book Status',style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              const Text('Owner ', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
            ReusableButton(title: 'Send Borrow Request', onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BorrowRequestPopUp()));

            }, height: height * .06),

          ],
        ),
      ),
    );
  }
}
