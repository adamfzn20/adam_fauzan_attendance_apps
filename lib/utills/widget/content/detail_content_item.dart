import 'package:adam_fauzan_attendance_apps/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DetailContentItem extends StatelessWidget {
  const DetailContentItem({
    super.key,
    required this.icon,
    required this.title,
    required this.contentText,
  });

  final Widget icon;
  final String title;
  final String contentText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 8),
        SizedBox(width: 24, height: 24, child: icon),
        const SizedBox(width: 16),
        SizedBox(
          width: 100.w - 112,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColour80,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                contentText,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: AppColors.textColour60,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
