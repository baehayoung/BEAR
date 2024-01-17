import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String label;
  final bool numType;

  const CustomInput({Key? key, this.label = '', this.numType = false})
      : super(key: key);

  @override
  State<CustomInput> createState() => _InputState();
}

class _InputState extends State<CustomInput> {
  final inputController = TextEditingController();

  String getValue() {
    return inputController.text;
  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.number,
        controller: inputController,
        decoration: InputDecoration(isDense: true, labelText: widget.label),
      ),
    );
  }
}
