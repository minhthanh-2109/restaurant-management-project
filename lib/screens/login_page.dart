import 'package:flutter/material.dart';
import 'package:restaurant_management_app/screens/home_page.dart';
import 'package:restaurant_management_app/widgets/login_input_widgets/account_input_field.dart';
import 'package:restaurant_management_app/widgets/login_input_widgets/empty_input_widget.dart';
import 'package:restaurant_management_app/widgets/login_input_widgets/password_form_field.dart';
import 'package:restaurant_management_app/widgets/login_input_widgets/wrong_input_value.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _checkEmptyInputValue = false;
  var _checkWrongInputValue = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  void dispose() {
    _usernameController
        .dispose(); // dispose controller sau khi lay input tu ng dung de tranh lang phi bo nho
    _passwordController.dispose();
    super.dispose();
  }

  void _checkAccount() {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      setState(() {
        _checkEmptyInputValue = true;
        _checkWrongInputValue = false;
      });
    } else if (username == "thanh" && password == "1234") {
      setState(() {
        _checkEmptyInputValue = false;
        _checkWrongInputValue = false;
      });
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => const HomePage(),
        ),
      );
    } else {
      setState(() {
        _checkEmptyInputValue = false;
        _checkWrongInputValue = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Đăng Nhập",
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF0B191E),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFFF1F4F8),
                            width: 2,
                          ),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24, 24, 24, 24),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Vui Lòng điền thông tin đăng nhập",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF0B191E),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                if (_checkEmptyInputValue)
                                  const EmptyInputValueWidget(),
                                if (_checkWrongInputValue)
                                  const WrongInputValueWidget(),
                                AccountInputField(
                                    controller: _usernameController),
                                PasswordFormField(
                                    controller: _passwordController),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      ElevatedButton(
                                        onPressed: _checkAccount,
                                        // () {
                                        // TODO: Thêm logic xác thực tài khoản ở đây
                                        // Nếu xác thực thành công, chuyển hướng đến trang HomePage
                                        // Navigator.of(context)
                                        //     .push(MaterialPageRoute(
                                        //   builder: (context) =>
                                        //       const HomePage(),
                                        // ));
                                        //},
                                        style: ButtonStyle(
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          'Đăng Nhập',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  child: TextButton(
                                    onPressed: () {
                                      // Xử lý quên mật khẩu ở đây
                                    },
                                    child: const Text('Quên mật khẩu?'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // child: Column(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     Image.asset('assets/images/test.jpg',
                        //         width: 100, height: 100), // Biểu tượng ảnh của nhà hàng
                        //     const SizedBox(height: 20),
                        //     TextField(
                        //       controller: _usernameController,
                        //       decoration: const InputDecoration(
                        //         labelText: 'Tài khoản',
                        //         border: OutlineInputBorder(),
                        //       ),
                        //     ),
                        //     const SizedBox(height: 10),
                        //     TextField(
                        //       controller: _passwordController,
                        //       decoration: const InputDecoration(
                        //         labelText: 'Mật khẩu',
                        //         border: OutlineInputBorder(),
                        //       ),
                        //       obscureText: true,
                        //     ),
                        //     const SizedBox(height: 20),
                        //     ElevatedButton(
                        //       onPressed: () {
                        //         // TODO: Thêm logic xác thực tài khoản ở đây

                        //         // Nếu xác thực thành công, chuyển hướng đến trang HomePage
                        //         Navigator.of(context).push(MaterialPageRoute(
                        //           builder: (context) => const HomePage(),
                        //         ));
                        //       },
                        //       child: const Text('Đăng Nhập'),
                        //     ),
                        //     const SizedBox(height: 10),
                        //     TextButton(
                        //       onPressed: () {
                        //         // Xử lý quên mật khẩu ở đây
                        //       },
                        //       child: const Text('Quên mật khẩu?'),
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
