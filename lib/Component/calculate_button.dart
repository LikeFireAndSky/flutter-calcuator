import 'package:flutter/material.dart';

class CalculatorButton extends StatefulWidget {
  const CalculatorButton({Key? key, required this.title, required this.fn}) : super(key: key);

  final Function fn;
  final String title;

  @override
  State<CalculatorButton> createState() => CalculatorButtonState();
}

class CalculatorButtonState extends State<CalculatorButton> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(2)),
              ),
            ),
            onPressed: () {
              widget.fn();
            },
            child: Text(
              widget.title,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          )
    ;
  }
}
