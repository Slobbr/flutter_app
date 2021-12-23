import 'package:flutter/material.dart';
import 'package:slobbr_app/utils/utils.dart';
import 'package:slobbr_app/widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Image(
            image: const AssetImage('assets/logo.png'),
            height: Utils(context: context).percentageScreenHeight(40),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: const Center(
              child: Text(
                "Laten we beginnen",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ),
          const Padding(
            padding: EdgeInsets.all(1.0),
            child: Center(
              child: Text(
                "Log in met je Slobbraccount of registreer je voor en nieuw account.",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Color.fromRGBO(33, 33, 33, 100)
                ),
                textAlign: TextAlign.center,
              )
            )
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: SlobbrTextField(
                obscureText: false,
                hintText: "E-mail",
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.blueGrey[300]
                ),)
            )
          ),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                  child: SlobbrTextField(
                    obscureText: true,
                    hintText: "Password",
                    prefixIcon: Icon(
                        Icons.password,
                        color: Colors.blueGrey[300]
                    ),)
              )
          )
        ],
      ),
    );
  }
}
