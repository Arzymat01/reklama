import 'package:flutter/material.dart';

class CustumTextField extends StatelessWidget {
  const CustumTextField({
    super.key,
    this.hinText,
    this.controller,
    this.onTap,
    this.maxLines,
    this.prefixIcon,
    this.suffixIcon,
    this.focusNode,
  });
  final String? hinText;
  final TextEditingController? controller;
  final Function()? onTap;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onTap: onTap,
      maxLines: maxLines,
      focusNode: focusNode,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: Text(hinText ?? ''),
        hintText: hinText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
