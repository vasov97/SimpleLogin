import 'package:project_1/res/app_theme/OutlinedButton.dart';
import 'package:flutter/material.dart';
import 'package:project_1/res/app_theme/ElevatedButton.dart';
import 'package:project_1/res/app_theme/app_images.dart';
import 'package:project_1/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

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
                        fit: BoxFit.cover,

                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [

                        Spacer(),
                        Text(
                          "Sign in to your Account",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Sign in to your Account",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 10)
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
                            ],
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                // Handle registration
                              },
                              child: const Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        CustomElevatedButton(

                          text: 'Login',
                          buttonWidth: MediaQuery.of(context).size.width-40,
                          onPressed: () { },
                        ),
                        const  SizedBox(height: 30),
                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            SizedBox(width: 8),
                            Text('Or login with'),
                            SizedBox(width: 8),
                            Expanded(child: Divider()),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            OutlinedIconButton(
                                imageProvider: AppImages.googleLogo.image,
                                width: MediaQuery.of(context).size.width*0.4,
                                fontSize: MediaQuery.of(context).size.width*0.04,
                                text: 'Google', onPressed: (){}),

                            OutlinedIconButton(
                                imageProvider: AppImages.facebookLogo.image,
                                width: MediaQuery.of(context).size.width*0.4,
                                fontSize: MediaQuery.of(context).size.width*0.04,
                                text: 'Facebook', onPressed: (){}),
                          ],
                        ),
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
                        "Don't have an account?",
                        style: TextStyle(fontSize: MediaQuery.of(context).size.width*0.04),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>const RegisterScreen()));
                        },
                        child: const Text(
                          'Register',
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
        ),
      ),
    );
  }
}
