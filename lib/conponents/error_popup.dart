import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class ErrorPopup extends StatelessWidget {
  static const router = 'error_popup';

  final String message;

  const ErrorPopup(this.message, {Key? key}) : super(key: key);


  static Future show(BuildContext context, String message) {
    return showDialog(
      context: context,
      routeSettings: const RouteSettings(name: ErrorPopup.router),
      barrierDismissible: true,
      builder: (_) => ErrorPopup(message),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
          color: AppColor.hFFFFFF,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                child: const Icon(Icons.close),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
            const SizedBox(height: 24.0),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: AppColor.h434343),
            ),
          ],
        ),
      ),
    );
  }
}
