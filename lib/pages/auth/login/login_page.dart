import 'package:base_provider_flutter/base/base_page.dart';
import 'package:base_provider_flutter/pages/auth/login/login_viewmodel.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget with MixinBasePage<LoginVM> {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builder(() => Scaffold(
          resizeToAvoidBottomInset: true,
          body: Container(
            color: Colors.pink,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        Text(provider.label,
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.redAccent,
                            primaryColorDark: Colors.red,
                          ),
                          child: const TextField(
                            style: TextStyle(fontSize: 14),
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal)),
                                hintText: 'Please input username',
                                labelText: 'Username',
                                prefixIcon: Icon(
                                  Icons.accessibility,
                                  color: Colors.green,
                                ),
                                prefixText: ' ',
                                suffixText: 'TEXT',
                                suffixStyle: TextStyle(color: Colors.green)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Theme(
                          data: ThemeData(
                            primaryColor: Colors.redAccent,
                            primaryColorDark: Colors.red,
                          ),
                          child: const TextField(
                            style: TextStyle(fontSize: 14),
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.teal)),
                                hintText: 'Please a pass',
                                labelText: 'Password',
                                prefixIcon: Icon(
                                  Icons.ac_unit_rounded,
                                  color: Colors.green,
                                ),
                                prefixText: ' ',
                                suffixText: 'PASS',
                                suffixStyle: TextStyle(color: Colors.green)),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        InkResponse(
                          onTap: () {
                            provider.login(() {
                              const snackBar = SnackBar(
                                content: Text('Yay! The Successfull API !'),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            child: Text("OK"),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Positioned(
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Register"),
                    )),
                const Positioned(
                    left: 0,
                    bottom: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Me"),
                    ))
              ],
            ),
          ),
        ));
  }

  @override
  LoginVM create() => LoginVM();

  @override
  void initialise(BuildContext context) {}
}
