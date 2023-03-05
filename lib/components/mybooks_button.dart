import 'package:flutter/material.dart';

class MyBooksButton extends StatefulWidget {
  const MyBooksButton({Key? key, required this.image, required this.title, required this.author, }) : super(key: key);

  final String image;
  final String title;
  final String author;

  @override
  State<MyBooksButton> createState() => _MyBooksButtonState();
}

class _MyBooksButtonState extends State<MyBooksButton> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            child: ClipOval(
                child: Image.asset( 'assets/images/bookapp_pic.png', fit: BoxFit.cover,)),
          ),
          title:  Text(widget.title, style: const TextStyle(fontSize: 20,),),
          subtitle: Text(widget.author, style: const TextStyle(fontSize: 20),),
            trailing: Column(
              children: [
                const Icon(Icons.delete),
                SizedBox(height: height* .007,),
                const Icon(Icons.edit),
              ],
            ),
        ),
      ),
    );
  }
}
