import 'package:flutter/material.dart';
import 'package:my_app/second_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Hardcoded credentials for demonstration
  final String registeredEmail = '';
  final String correctPassword = '';

  void login() {
    final email = emailController.text;
    final password = passwordController.text;

    if (email.isEmpty || !email.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid email')),
      );
      return;
    }
    if (password.isEmpty || password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Password must be at least 6 characters long')),
      );
      return;
    }

    // Perform login action
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Login successful')),
    );

    // Navigate to the next screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MySecondScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Casgo'),
        backgroundColor: Colors.tealAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2013/03/07/11/16/hands-91123_1280.jpg',
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "Login to your account",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: login,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
