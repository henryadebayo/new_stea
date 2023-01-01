import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String? hintText;
  final int? maxLines;
  final int? minLines;
  final int? maxLenght;
  var onSubmited;
  var validatorr;

  CustomTextFormFeild(
      {Key? key,
      this.hintText,
      this.maxLines,
      this.minLines,
      this.maxLenght,
      this.onSubmited,
      this.validatorr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //expands: true,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
          labelText: hintText,
          // hintStyle: TextStyle(),
          focusColor: Colors.red,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          )),
      maxLength: maxLenght,
      onSaved: onSubmited,
      validator: validatorr,
    );
  }
}
