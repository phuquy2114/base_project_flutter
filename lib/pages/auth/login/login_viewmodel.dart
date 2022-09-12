import 'dart:ffi';

import 'package:base_provider_flutter/base/base_viewmodel.dart';
import 'package:flutter/material.dart';

class LoginVM extends BaseViewModel {
  String label = "Login";
  @override
  void onInit() {}

  Future login(VoidCallback success) async {
    // todo request API the server
    showLoading();
    await Future.delayed(const Duration(seconds: 10));
    success.call();
    hideLoading();
  }

}
