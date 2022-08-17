import 'package:flutter/material.dart';

class RangeSliderUI extends StatefulWidget {
  const RangeSliderUI({Key? key}) : super(key: key);

  @override
  State<RangeSliderUI> createState() => _RangeSliderUIState();
}

class _RangeSliderUIState extends State<RangeSliderUI> {
  RangeValues _currentRangeValues = const RangeValues(800, 1000);

  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      values: _currentRangeValues,
      max: 1000,
      divisions: 10,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }
}
