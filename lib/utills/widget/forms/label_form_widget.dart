import 'package:adam_fauzan_attendance_apps/resources/resources.dart';
import 'package:flutter/material.dart';

class LabelFormWidget extends StatelessWidget {
  const LabelFormWidget({
    super.key,
    required this.labelText,
    this.color,
  });

  final String labelText;
  final color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 12),
      child: Text(
        labelText,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: color == null ? AppColors.textColour70 : color!,
            ),
      ),
    );
  }
}
