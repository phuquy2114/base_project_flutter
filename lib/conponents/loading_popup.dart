import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../utils/app_color.dart';

class LoadingPopup extends StatelessWidget {
  static const router = 'loading_popup';

  const LoadingPopup({Key? key}) : super(key: key);

  static Future show(BuildContext context) {
    return showDialog(
      context: context,
      routeSettings: const RouteSettings(name: LoadingPopup.router),
      barrierDismissible: false,
      builder: (_) => const LoadingPopup(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Center(
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                color: AppColor.hFFFFFF, borderRadius: BorderRadius.circular(16)),
            child: const SpinKitCircle(size: 40, color: AppColor.h4DC46E)),
      ),
    );
  }
}
