import 'package:flutter/material.dart';
import 'package:project_1/res/app_theme/ElevatedButton.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isRepeatPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Dismiss the keyboard when tapped outside the text fields
        },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    padding:const EdgeInsets.all(20),
                    decoration:const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/backgroundimage.jpg'),
                        fit: BoxFit.fill,

                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                         Spacer(),

                        Text(
                          "Register                            ",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),

                         Text(
                          "Create your account",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                         SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding:const EdgeInsets.only(left: 20,right: 20),
                    color: Colors.white,
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                controller: _fullNameController,
                                decoration:const InputDecoration(
                                    labelText: 'Full Name',
                                    border: OutlineInputBorder()
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your full name';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20.0),
                              TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  // Add email format validation if needed
                                  return null;
                                },
                              ),

                              const SizedBox(height: 16.0),
                              TextFormField(
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  labelText: 'Password',
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible = !_isPasswordVisible;
                                      });
                                      _passwordController.selection = TextSelection.fromPosition(
                                          TextPosition(offset: _passwordController.text.length));
                                    },
                                    icon: Icon(
                                      _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                    ),
                                  ),
                                ),
                                obscureText: !_isPasswordVisible,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  // Add password validation if needed
                                  return null;
                                },
                              ),
                              const SizedBox(height: 16.0),
                              TextFormField(
                                controller: _repeatPasswordController,
                                decoration: InputDecoration(
                                  labelText: 'Repeat Password',
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isRepeatPasswordVisible = !_isRepeatPasswordVisible;
                                      });
                                      _repeatPasswordController.selection = TextSelection.fromPosition(
                                          TextPosition(offset: _repeatPasswordController.text.length));
                                    },
                                    icon: Icon(
                                      _isRepeatPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                    ),
                                  ),
                                ),
                                obscureText: !_isRepeatPasswordVisible,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please repeat your password';
                                  }
                                  if (value != _passwordController.text) {
                                    return 'Passwords do not match';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20,),
                        CustomElevatedButton(

                          text: 'Register',
                          buttonWidth: MediaQuery.of(context).size.width-40,
                          onPressed: () { },
                        ),

                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "I have an account?",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Log in',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
