import 'package:flutter/material.dart';

class InputNumber extends StatefulWidget {
  const InputNumber({Key? key, required this.control, required this.placeholder}) : super(key: key);

  final String placeholder;
  final TextEditingController control;

  @override
  State<InputNumber> createState() => _InputNumberState();
}

class _InputNumberState extends State<InputNumber> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child : TextField(
            controller: widget.control,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: widget.placeholder,
            ),
        )
    );
  }
}