import 'package:flutter/material.dart';
import 'package:photoap2/photo_list_screen.dart';

class SignInScreen extends StatefulWidget {
  //const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formKey,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Photo App 2',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'メールアドレス'),
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  if (value?.isEmpty == true || value == null) {
                    return 'メールアドレスを入力してください';
                  }
                  return null;
                },
              ),
              SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(labelText: 'パスワード'),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                validator: (String? value) {
                  if (value?.isEmpty == true || value == null) {
                    return 'パスワードを入力してください';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _onSignIn(),
                  child: Text('ログイン'),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _onSignUp(),
                  child: Text('新規登録'),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void _onSignIn() {
    if (_formKey.currentState?.validate() != true) {
      return;
    }
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (_) => PhotoListScreen(),
    ));
  }

  void _onSignUp() {
    if (_formKey.currentState?.validate() != true) {
      return;
    }
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (_) => PhotoListScreen()));
  }
}
