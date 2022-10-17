import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Picker extends StatefulWidget {
  final List<Object> dataList;
  final TextEditingController pickerController;
  const Picker({
    Key? key,
    required this.dataList, required this.pickerController,
  }) : super(key: key);

  @override
  State<Picker> createState() => _PickerState();
}

const double _kItemExtent = 32.0;

class _PickerState extends State<Picker> {
  int _selectedSize = 0;
  void _showDialog(Widget child) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The Bottom margin is provided to align the popup above the system navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Colors.transparent,
      padding: EdgeInsets.zero,
      onPressed: () => _showDialog(
        CupertinoPicker(
          magnification: 1.22,
          squeeze: 1.2,
          useMagnifier: true,
          itemExtent: _kItemExtent,
          onSelectedItemChanged: (int selectedItem) {
            setState(() {
              _selectedSize = selectedItem;
            });
          },
          children: List<Widget>.generate(
            widget.dataList.length,
            (index) => Center(
              child: Text(
                widget.dataList[index].toString(),
              ),
            ),
          ),
        ),
      ),
      child: Text(
        widget.dataList[_selectedSize].toString(),
        style: const TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
}
