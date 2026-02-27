import 'package:flutter/material.dart';

class FormFieldClass extends StatelessWidget {
  const FormFieldClass({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    final formKey =
        GlobalKey<FormState>(); // Create a GlobalKey to identify the form
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          'Form Widget',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        centerTitle: true,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey, // Identifies the form and allows validation
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your name',
                  hintText: 'Name',
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email',
                  hintText: 'Email',
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: passwordController,
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your password',
                  hintText: 'Password',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // If the form is valid, you can proceed with further actions
                    print('Form is valid');
                  } else {
                    // If the form is invalid, you can show an error message or take appropriate action
                    print('Form is invalid');
                  }
                  ;
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
