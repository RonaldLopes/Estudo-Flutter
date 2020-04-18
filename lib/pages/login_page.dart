
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Carros"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: <Widget>[
          _text("Login", "Informe o login"),
          SizedBox(height: 20,),
          _text("Senha", "Informe a senha", password: true),
          SizedBox(height: 20,),
          _button("Login")
        ],
      ),
    );
  }

  Container _button(String text) {
    return Container(
          height: 46,
          child: RaisedButton(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            color: Colors.blue,
            onPressed: () {},
          ),
        );
  }

  TextFormField _text(String text, String hint_text, {bool password = false}) {
    return TextFormField(
          obscureText: password ,
          style: TextStyle(
            fontSize: 20
          ),
          decoration: InputDecoration(
            labelText: text,
            labelStyle: TextStyle(
              fontSize: 20
            ),
            hintText: hint_text
          ),
        );
  }
}
