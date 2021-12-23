import 'package:flutter/material.dart';

class SlobbrTextField extends StatelessWidget {
  final TextEditingController _searchControl = new TextEditingController();

  String? hintText;
  double? fontSize = 15.0;
  Widget? prefixIcon;
  bool obscureText = false;

  SlobbrTextField({Key? key, this.hintText, this.fontSize, this.prefixIcon, required this.obscureText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey[50],
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0)
        )
      ),
      child: TextField(
        style: TextStyle(
          fontSize: this.fontSize,
          color: Colors.blueGrey[300],
        ),
        obscureText: this.obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: this.hintText,
          prefixIcon: this.prefixIcon,
          hintStyle: TextStyle(
            fontSize: 15.0,
            color: Colors.blueGrey[300],
          ),
        ),
        maxLines: 1,
        controller: _searchControl,
      )
    );
  }
}
