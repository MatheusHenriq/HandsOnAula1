import 'package:flutter/material.dart';
import 'package:handson1/app/ui/signin/widgets/mybutton.dart';
import 'package:handson1/app/ui/signin/widgets/mytextformfield.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
              child: Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.red[900],
                  fontWeight: FontWeight.w800,
                  fontSize: 26,
                ),
              ),
            ),
            MyTextFormField(
              hintText: 'E-mail Adress',
            ),
            MyTextFormField(
              hintText: 'Password',
              obscureText: true,
            ),
            MyButton(
              labelText: 'Log In',
              color: Colors.red[900],
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(child: Text('OR')),
            ),
            MyButton(
              labelText: 'Facebook Login',
              color: Colors.blue[900],
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
