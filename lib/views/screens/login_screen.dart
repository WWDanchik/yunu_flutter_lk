import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';
import 'package:yunu_lk_flutter/viewmodels/auth/auth_notifier.dart';
import 'package:yunu_lk_flutter/views/widgets/yunu_logo.dart';

import '../../viewmodels/auth/async_login.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(asyncLoginProvider);

    final mediaQuery = MediaQuery.of(context).size;
    final authNotifier = ref.read(authNotifierProvider.notifier);
    onLogin() async {
      final login = _loginController.text;
      final password = _passwordController.text;
      final response = await ref
          .read(asyncLoginProvider.notifier)
          .login(login, password);

      response.when(
        error: (status, errors) {
          toastification.dismissAll();
          for (var error in errors) {
            toastification.show(
              context: context,
              autoCloseDuration: Duration(seconds: 5),
              dragToClose: true,
              dismissDirection: DismissDirection.down,
              style: ToastificationStyle.fillColored,
              type: ToastificationType.error,
              title: RichText(text: TextSpan(text: error.message)),
            );
          }
        },
        ok: (status, result) async {
          await authNotifier.logIn(result.token, result.refreshToken);
        },
      );
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 104.0, 24.0, 24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const YunuLogo(width: 50, height: 50),
              const SizedBox(height: 50),
              Container(
                width: mediaQuery.width < 400 ? mediaQuery.width * 0.9 : 400,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Авторизация',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey.shade900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Введите e-mail, указанный при регистрации, и пароль от аккаунта',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextField(
                      controller: _loginController,
                      decoration: InputDecoration(
                        labelText: 'E-mail',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autofillHints: const [AutofillHints.email],
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Пароль',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      autofillHints: const [AutofillHints.password],
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: FilledButton(
                        onPressed: onLogin,
                        child:
                            loginState.isLoading
                                ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                                : const Text('Войти'),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: TextButton(
                        onPressed: () {
                          context.push("/forgot_password");
                        },
                        child: Text('Забыли пароль?'),
                      ),
                    ),
                    const SizedBox(height: 16),
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
