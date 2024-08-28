import 'package:calendar_scheduler/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isTime;

  const CustomTextField({
    required this.label,
    required this.isTime,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: PRIMARY_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8.0), // Added spacing between label and text field
        TextFormField(
          cursorColor: Colors.grey, // Fixed color reference
          maxLines: isTime ? 1 : null,
          expands: !isTime,
          keyboardType: isTime ? TextInputType.number : TextInputType.multiline,
          inputFormatters: isTime
              ? [FilteringTextInputFormatter.digitsOnly]
              : [],
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.grey[300], // Fixed color reference
            suffixText: isTime ? '시' : null,
          ),
        ),
      ],
    );
  }
}