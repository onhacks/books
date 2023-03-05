import 'package:books/components/reusable_button.dart';
import 'package:flutter/material.dart';

class BorrowRequestPopUp extends StatefulWidget {
  const BorrowRequestPopUp({Key? key}) : super(key: key);

  @override
  State<BorrowRequestPopUp> createState() => _BorrowRequestPopUpState();
}

class _BorrowRequestPopUpState extends State<BorrowRequestPopUp> {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
       child: SingleChildScrollView(

         physics: NeverScrollableScrollPhysics(),
         child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            ),
           padding: const EdgeInsets.all(20),
           margin: const EdgeInsets.fromLTRB(25, 55, 25, 120),
           child: Column(
             children: [
               SizedBox(height: height * .05),
               Center(
                 child: CircleAvatar(
                   radius: 80,
                   backgroundColor: Colors.transparent,
                   child: ClipOval(
                       child: Image.asset( 'assets/images/bookapp_pic.png', fit: BoxFit.cover,)),
                 ),
               ),
               SizedBox(height:  height * .03,),
               const Center(
               child: Text('Title', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
               ),
               SizedBox(height:  height * .02,),

               const Center(
                 child: Text('Author', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
               ),
               SizedBox(height:  height * .03,),

               Row(
                 children: [
                   const Icon(Icons.calendar_month),
                   SizedBox(width:  width * .05,),
                   const Text('Borrow Date', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                 ],
               ),
               SizedBox(height:  height * .05,),
               Row(
                 children: [
                   const Icon(Icons.calendar_today_rounded),
                   SizedBox(width:  width * .05,),
                   const Text('Return Date', style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                 ],
               ),
               SizedBox(height:  height * .07,),
               ReusableButton(title: 'Request Book', onPressed: () {}, height: height * .07)
             ],
           ),
         ),
       ),
      ),
    );
  }
}
