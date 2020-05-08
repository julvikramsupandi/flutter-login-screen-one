import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.of(context).orientation == Orientation.landscape
          ? SingleChildScrollView(child: LoginScreen())
          : LoginScreen(),
          resizeToAvoidBottomPadding: false,
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormLogin(),
        // FormLogin(),
        Flexible(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    "OR LOGIN WITH",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  children: <Widget>[
                    GoogleSignInButton(
                      onPressed: () {},
                      text: "Google     ",
                      borderRadius: 80,
                    ),
                    Spacer(),
                    FacebookSignInButton(
                        onPressed: () {},
                        text: "Facebook   ",
                        borderRadius: 80),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Divider(),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "Don't have an account yet?",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                    child: Text("REGISTER",
                        style: TextStyle(color: Color(0xFF13E3D2),fontWeight: FontWeight.bold,)),
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    })
              ],
            ),
          ),
        )
      ],
    );
  }
}

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Stack(
        children: <Widget>[
          Container(height: MediaQuery.of(context).size.height),
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('images/login-header.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 3.6,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    margin: const EdgeInsets.all(20.0),
                    elevation: 7,
                    child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF5D74E2),
                                  ),
                                ),
                                labelText: "Username : ",
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.visibility_off,
                                  color: Color(0xFF13E3D2),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF5D74E2))),
                                labelText: "Password :",
                                labelStyle:
                                    TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 5, right: 5, left: 5),
                                child: Row(children: <Widget>[
                                  Text(
                                    "Forgot Password?",
                                    style: TextStyle(),
                                  ),
                                  Spacer(
                                    flex: 2,
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(80.0),
                                    ),
                                    padding: const EdgeInsets.all(0.0),
                                    child: Ink(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: <Color>[
                                            Color(0xFF13E3D2),
                                            Color(0xFF5D74E2)
                                          ],
                                        ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(80.0),
                                        ),
                                      ),
                                      child: Container(
                                        constraints: const BoxConstraints(
                                          minWidth: 150.0,
                                          minHeight: 36.0,
                                        ),
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Login',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ]))
                          ],
                        )),
                  ))),
        ],
      ),
    );
  }
}
