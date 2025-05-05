import 'package:flutter/material.dart';
import 'package:best_store/model.dart';
import 'package:best_store/API_handler.dart'; // Ensure API_handler.dart is correctly imported
import 'package:best_store/main_page.dart';



class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formKey = GlobalKey<FormState>();
  bool isLogin = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  // Toggle between Login and Sign-up modes
  void _toggleFormMode() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  // Submit the form
  void _submit() async {
    if (_formKey.currentState!.validate()) {
      final email = _emailController.text;
      final password = _passwordController.text;

      if (isLogin) {
        // Handle login logic
        final APIhandler apiHandler = APIhandler();
        List<User> users = await apiHandler.getUserData();

        // Check if user with given email and password exists
        User? user = users.firstWhere(
          (user) => user.email == email && user.password == password,
          orElse: () => User(userId: 0, name: '', password: '', fullName: '', email: ''),
        );

        if (user.email != '') {
          // User found, navigate to UserDetailsPage
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MyApp(),
            ),
          );
        } else {
          // Show error if user not found
          _showErrorDialog('Invalid email or password');
        }
      } else {
        // Handle sign-up logic
        final username = _usernameController.text;
        final fullName = _fullNameController.text;
        final confirmPassword = _confirmPasswordController.text;

        if (password != confirmPassword) {
          // Handle password mismatch
          print('Passwords do not match');
          _showErrorDialog('Passwords do not match');
          return;
        }

        // Implement sign-up logic here
        print('Sign up with: $email, $password, $username, $fullName');
      }
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isLogin ? 'Login' : 'Sign-Up'),
      ),
      body: Center( // Centering the form
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey, // Form key for validation
              child: Column(
                children: <Widget>[
                  Text(isLogin
                        ? 'Login'
                        : 'Signup',
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                        ),
                  // Username (only visible for Sign-Up)
                  if (!isLogin)
                    TextFormField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a username';
                        }
                        return null;
                      },
                    ),
                  if (!isLogin) const SizedBox(height: 20),

                  // Full Name (only visible for Sign-Up)
                  if (!isLogin)
                    TextFormField(
                      controller: _fullNameController,
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                  if (!isLogin) const SizedBox(height: 20),

                  // Email Field
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Password Field
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Colors.teal, width: 2.0),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty || value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Confirm Password (only visible for Sign-Up)
                  if (!isLogin)
                    TextFormField(
                      controller: _confirmPasswordController,
                      decoration: InputDecoration(
                        labelText: 'Confirm Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.teal, width: 2.0),
                        ),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                  if (!isLogin) const SizedBox(height: 20),

                  // Submit Button
                  ElevatedButton(
                    onPressed: _submit,
                    child: Text(isLogin ? 'Login' : 'Sign Up'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                  ),

                  // Toggle between Login and Sign-Up
                  TextButton(
                    onPressed: _toggleFormMode,
                    child: Text(isLogin
                        ? 'Don\'t have an account? Sign Up'
                        : 'Already have an account? Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


