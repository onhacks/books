import 'package:flutter/material.dart';

class ReusableButton extends StatefulWidget {
  const ReusableButton({Key? key, required this.title, required this.onPressed,  required this.height, }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  final double height;

  @override
  State<ReusableButton> createState() => _ReusableButtonState();
}

class _ReusableButtonState extends State<ReusableButton> {
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap:  widget.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Container(
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
                  ),
            ),
          ),
        ),

    );
  }
}
