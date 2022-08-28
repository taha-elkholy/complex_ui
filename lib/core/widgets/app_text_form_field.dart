import 'package:flutter/material.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    Key? key,
    required this.controller,
    required this.inputType,
    this.isPassword = false,
    this.validate,
    required this.hint,
  }) : super(key: key);
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType inputType;
  final String hint;
  final String? Function(String?)? validate;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      controller: widget.controller,
      validator: widget.validate,
      keyboardType: widget.inputType,
      obscureText: widget.isPassword == true ? !_obscureText : false,
      style: Theme.of(context).textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.black.withOpacity(0.25)),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                onPressed: () {
                  setState(
                    () {
                      _obscureText = !_obscureText;
                    },
                  );
                },
                icon: Icon(
                  _obscureText == true
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.grey,
                ),
              )
            : null,
      ),
    );
  }
}
