import 'package:flutter/material.dart';
import 'package:handson1/app/ui/signin/signin_screen.dart';
import 'package:handson1/app/ui/widgets/mybutton.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            'assets/images/redphone.png',
            height: 120,
            width: 120,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Text(
              'Diga olá para o seu novo aplicativo!',
              style: TextStyle(
                color: Colors.red[900],
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: Text(
              'Você acabou de salvar uma semana de desenvolvimento e dores de cabeça.',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          MyButton(
            onTap: () {},
            labelText: 'Log In',
            buttonColor: Colors.red,
          ),
          MyButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SignInScreen(),
                ),
              );
            },
            labelText: 'Sign In',
            buttonColor: Colors.white,
            textColor: Colors.grey,
          ),
        ],
      )),
    );
  }
}
