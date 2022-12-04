import 'package:flutter/material.dart';
import 'package:truetask_app/main.dart';
import 'package:truetask_app/screen/register_page.dart';
import 'package:truetask_app/utils/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _validator = Validator();

  bool _obscureText = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Image.asset('assets/image/Truetask.png')),
          const SizedBox(height: 42),
          const Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 42,
            ),
          ),
          const SizedBox(height: 42),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  validator: (value) =>
                      Validator().validateField(field: value!),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.mail_outline),
                    hintText: 'Enter Your Email',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 3, color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(width: 3, color: Colors.blue),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) =>
                      Validator().validateField(field: value!),
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock_outline),
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () =>
                            setState(() => _obscureText = !_obscureText),
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                      ),
                      errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 3, color: Colors.blue),
                      )),
                ),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _rememberMe = !_rememberMe;
                    });
                  },
                  child: Row(
                    children: [
                      Icon(
                        _rememberMe
                            ? Icons.check_box
                            : Icons.check_box_outline_blank,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 4),
                      const Text("Remember me")
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Semua field wajib diisi!")),
                      );
                    },
                    child: const Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: const Text("Forgot Password"),
                ),
                const SizedBox(height: 48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't Have Account?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text("Create One"))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
