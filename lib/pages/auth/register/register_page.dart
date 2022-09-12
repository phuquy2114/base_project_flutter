import 'package:base_provider_flutter/base/base_page.dart';
import 'package:base_provider_flutter/pages/auth/register/register_viewmodel.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget with MixinBasePage<RegisterVM> {
   RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builder(() => const Scaffold());
  }

  @override
  RegisterVM create() {
    return RegisterVM();
  }

  @override
  void initialise(BuildContext context) {}
}
