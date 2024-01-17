import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  final int selected;
  final List<String> values;
  final double width;

  const Dropdown(
      {Key? key, required this.values, this.selected = 0, this.width = 150})
      : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  late String selected;

  @override
  void initState() {
    super.initState();
    selected = widget.values[widget.selected];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: DropdownButton(
        items: widget.values
            .map((item) => DropdownMenuItem(
                  value: item,
                  child: SizedBox(
                    // width: 100.0,
                    child: Text(item, textAlign: TextAlign.center),
                  ),
                ))
            .toList(),
        value: selected,
        onChanged: (value) {
          setState(() {
            selected = value!;
          });
        },
        // icon: const Align(
        //     alignment: Alignment.center,
        //     child: Icon(Icons.keyboard_arrow_down))
      ),
    );
  }
}
