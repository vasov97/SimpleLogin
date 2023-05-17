import 'package:project_1/res/app_theme/OutlinedButton.dart';
import 'package:flutter/material.dart';
import 'package:project_1/res/app_theme/ElevatedButton.dart';
import 'package:project_1/res/app_theme/app_icons.dart';
import 'package:project_1/res/app_theme/app_images.dart';
import 'package:project_1/screens/login_screen.dart';
import 'package:project_1/screens/register_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text(
                      'Welcome to Max-learn',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Let's upgrade your learning experience",
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Changing the way people learn by providing an interactive,engaging,and personalized learning.",
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
              flex: 1,
              child: Container(
                padding:const EdgeInsets.only(left: 20,right: 20),
                color: Colors.white,
                child: Column(
                  children: [
                   const SizedBox(height: 40,),
                     CustomElevatedButton(
                      icon: AppIcons.phoneIcon,
                      text: 'Continue with number',
                       buttonWidth: MediaQuery.of(context).size.width-40,
                       onPressed: () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>const LoginScreen()));
                       },
                    ),
                     const  SizedBox(height: 40),
                     Row(
                       children: const [
                         Expanded(child: Divider()),
                         SizedBox(width: 8),
                         Text('Or login with'),
                         SizedBox(width: 8),
                         Expanded(child: Divider()),
                       ],
                     ),
                    const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OutlinedIconButton(
                        imageProvider: AppImages.googleLogo.image,
                        imageSize: 16,
                        width: MediaQuery.of(context).size.width*0.4,
                        fontSize: MediaQuery.of(context).size.width*0.04,
                        text: 'Google',
                        onPressed: (){}
                    ),

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
    );
  }
}
