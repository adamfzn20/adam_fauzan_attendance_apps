import 'package:adam_fauzan_attendance_apps/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotabeneWidget extends StatelessWidget {
  const NotabeneWidget({
    super.key,
    required this.notabeneText,
  });

  final String notabeneText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.warning.withOpacity(0.2)),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Text(
        notabeneText,
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: AppColors.warning,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
