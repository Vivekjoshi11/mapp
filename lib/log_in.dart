import 'package:flutter/material.dart';

class log_in extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<log_in> {
  // Declare variables for form fields
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  // Login button handler with validation
  void _handleLogin() {
    // Replace with your authentication logic (e.g., API call)
    if (_usernameController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
      // Simulate successful login
      Navigator.pushReplacementNamed(context, '/home'); // Replace with your home screen route
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter username and password'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              obscureText: true, // Hide password characters
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _handleLogin,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
