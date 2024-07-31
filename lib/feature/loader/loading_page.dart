import 'package:flutter/material.dart';
import '/resources/resources.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: AppColors.colorPrimary,
        ),
      ),
    );
  }
}
