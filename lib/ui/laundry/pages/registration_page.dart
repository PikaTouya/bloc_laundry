import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPageWidget extends StatefulWidget {
  const RegistrationPageWidget({Key? key}) : super(key: key);

  @override
  State<RegistrationPageWidget> createState() => _RegistrationPageWidgetState();
}

class _RegistrationPageWidgetState extends State<RegistrationPageWidget> {
  // Controllers and FocusNodes
  final usernameTextController = TextEditingController();
  final usernameFocusNode = FocusNode();
  final phonenumberTextController = TextEditingController();
  final phonenumberFocusNode = FocusNode();
  final emailTextController = TextEditingController();
  final emailFocusNode = FocusNode();
  final addressTextController = TextEditingController();
  final addressFocusNode = FocusNode();
  final passwordCreateTextController = TextEditingController();
  final passwordCreateFocusNode = FocusNode();
  final passwordConfirmTextController = TextEditingController();
  final passwordConfirmFocusNode = FocusNode();
  final ageTextController = TextEditingController();
  final ageFocusNode = FocusNode();

  // Password visibility state
  bool passwordCreateVisibility = false;
  bool passwordConfirmVisibility = false;

  @override
  void dispose() {
    // Dispose all controllers and focus nodes
    usernameTextController.dispose();
    usernameFocusNode.dispose();
    phonenumberTextController.dispose();
    phonenumberFocusNode.dispose();
    emailTextController.dispose();
    emailFocusNode.dispose();
    addressTextController.dispose();
    addressFocusNode.dispose();
    passwordCreateTextController.dispose();
    passwordCreateFocusNode.dispose();
    passwordConfirmTextController.dispose();
    passwordConfirmFocusNode.dispose();
    ageTextController.dispose();
    ageFocusNode.dispose();
    super.dispose();
  }

  String? validateText(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Registration Page',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),  // Dikurangi menjadi 4
                const Text(
                  'Create your account below.',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                const SizedBox(height: 4),  // Dikurangi menjadi 4
                // Username field
                _buildTextField(
                  controller: usernameTextController,
                  focusNode: usernameFocusNode,
                  labelText: 'Username',
                  hintText: 'Enter your username...',
                ),
                const SizedBox(height: 2),  // Dikurangi menjadi 2
                // Phone number field
                _buildTextField(
                  controller: phonenumberTextController,
                  focusNode: phonenumberFocusNode,
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number...',
                ),
                const SizedBox(height: 2),  // Dikurangi menjadi 2
                // Email field
                _buildTextField(
                  controller: emailTextController,
                  focusNode: emailFocusNode,
                  labelText: 'Email',
                  hintText: 'Enter your email...',
                ),
                const SizedBox(height: 2),  // Dikurangi menjadi 2
                // Address field
                _buildTextField(
                  controller: addressTextController,
                  focusNode: addressFocusNode,
                  labelText: 'Address',
                  hintText: 'Enter your address...',
                ),
                const SizedBox(height: 0),  // Dikurangi menjadi 2
                // Password field
                _buildPasswordField(
                  controller: passwordCreateTextController,
                  focusNode: passwordCreateFocusNode,
                  labelText: 'Create Password',
                  visibility: passwordCreateVisibility,
                  toggleVisibility: () {
                    setState(() {
                      passwordCreateVisibility = !passwordCreateVisibility;
                    });
                  },
                ),
                const SizedBox(height: 0),  // Dikurangi menjadi 2
                // Confirm password field
                _buildPasswordField(
                  controller: passwordConfirmTextController,


                  focusNode: passwordConfirmFocusNode,
                  labelText: 'Confirm Password',
                  visibility: passwordConfirmVisibility,
                  toggleVisibility: () {
                    setState(() {
                      passwordConfirmVisibility = !passwordConfirmVisibility;
                    });
                  },
                ),
                const SizedBox(height: 2),  // Dikurangi menjadi 2
                // Age field
                _buildTextField(
                  controller: ageTextController,
                  focusNode: ageFocusNode,
                  labelText: 'Age',
                  hintText: 'Enter your age...',
                ),
                const SizedBox(height: 8),  // Menjaga sedikit jarak di bawah form
                // Create Account button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _onRegisterPressed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF9489F5), // Button color
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Create Account',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 8),  // Dikurangi menjadi 8
                // Login link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account? ",
                      style: TextStyle(color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to Login Page
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );





  }

  Widget _buildTextField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required String labelText,
    required String hintText,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.white, // Warna putih untuk TextField
        ),
        validator: validateText,
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required FocusNode focusNode,
    required String labelText,
    required bool visibility,
    required VoidCallback toggleVisibility,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        obscureText: !visibility,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: Colors.white, // Warna putih untuk PasswordField
          suffixIcon: IconButton(
            icon: Icon(visibility ? Icons.visibility : Icons.visibility_off),
            onPressed: toggleVisibility,
          ),
        ),
        validator: validateText,
      ),
    );
  }

  void _onRegisterPressed() {
    if (passwordCreateTextController.text != passwordConfirmTextController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match!')),
      );
      return;
    }
    // Add logic to handle registration (e.g., API calls)
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Account created successfully!')),
    );
  }
}
