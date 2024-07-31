import 'package:adam_fauzan_attendance_apps/resources/resources.dart';
import 'package:flutter/material.dart';

class RequestFloatingActionButton extends StatelessWidget {
  const RequestFloatingActionButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [AppElevation.elevation7px],
            color: AppColors.colorPrimary),
        margin: const EdgeInsets.only(right: 8, bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          children: [
            const Icon(
              Icons.add_box_outlined,
              color: AppColors.white,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
