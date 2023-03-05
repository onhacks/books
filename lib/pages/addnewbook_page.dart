import 'package:books/components/reusable_button.dart';
import 'package:flutter/material.dart';

class AddNewBookPage extends StatefulWidget {
  const AddNewBookPage({Key? key}) : super(key: key);

  @override
  State<AddNewBookPage> createState() => _AddNewBookPageState();
}

class _AddNewBookPageState extends State<AddNewBookPage> {

  final _bookISBNController= TextEditingController();
  final _bookNameController= TextEditingController();
  final _authorNameController= TextEditingController();
  final _publishDateController= TextEditingController();
  final _bookGenreController= TextEditingController();



  @override
  void dispose() {
    _bookISBNController.dispose();
    _bookNameController.dispose();
    _authorNameController.dispose();
    _publishDateController.dispose();
    _bookGenreController.dispose();


    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New book'),
        centerTitle: true,
      ),
      body:    Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height *.03,),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Book ISBN', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),)),
                SizedBox(height: height *.009,),
                TextFormField(
                  controller: _bookISBNController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  ),
                ),
                SizedBox(height: height *.009,),
                const Text('OR' , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                SizedBox(height: height *.009,),
                const Align(
                    alignment: Alignment.center,
                    child: Text('Add it manually', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),)),
                SizedBox(height: height *.008,),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Book Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),)),
                TextFormField(
                  controller: _bookNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: height *.009,),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Author Name', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),)),
                TextFormField(
                  controller: _authorNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: height *.01,),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Publish Date ', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),)),
                TextFormField(
                  controller: _bookNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: height *.01,),
                const Align(
                    alignment: Alignment.topLeft,
                    child: Text('Book Genre ', style: TextStyle(fontWeight: FontWeight.bold, fontSize:15),)),

                TextFormField(
                  controller: _bookNameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: height *.03,),
                ReusableButton(title: 'Add', onPressed: () {}, height: height *.05),


              ],
            ),
          ),
        ),
      ),

    );
  }
}
