import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void showProgress(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const _CustomLoadingDailog(),
  );
}

// ignore: must_be_immutable
class _CustomLoadingDailog extends StatelessWidget {
  const _CustomLoadingDailog();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: PopScope(
        canPop: false,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200, // Adjust the width
              height: 60,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Gap(30),
                  CupertinoActivityIndicator(
                    color: Colors.black,
                    radius: 12,
                  ),
                  Gap(10),
                  Text(
                    'Please wait...',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Gap(30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
