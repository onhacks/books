import 'package:flutter/material.dart';

class ViewBookButton extends StatefulWidget {
   const ViewBookButton({Key? key, required this.title, required this.author, required this.genre, required this.image, required this.onPressed}) : super(key: key);
    final String title;
    final String author;
    final String genre;
    final String image;
    final VoidCallback onPressed;

  @override
  State<ViewBookButton> createState() => _ViewBookButtonState();
}

class _ViewBookButtonState extends State<ViewBookButton> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                        child: Image.asset( 'assets/images/bookapp_pic.png', fit: BoxFit.cover,)),
                  ),
                  SizedBox(width: width * .07 ,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(widget.title, style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(widget.author,style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ), ),
                      ),
                      Text(widget.genre,style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),  ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
