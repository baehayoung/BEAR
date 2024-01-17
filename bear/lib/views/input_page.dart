import 'package:bear/component/input/datepicker.dart';
import 'package:bear/component/input/dropdown.dart';
import 'package:bear/component/input/input.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        Expanded(child: DatePicker()),
        Expanded(
          child: Row(
            children: [
              Expanded(child: CustomInput(label: '항목')),
              Expanded(
                  child: CustomInput(
                label: '금액',
                numType: true,
              ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Dropdown(
                values: ["first", 'second'],
              )),
              Expanded(
                  child: Dropdown(
                values: ["first", 'second'],
              )),
            ],
          ),
        )
      ],
    ));
  }
}
