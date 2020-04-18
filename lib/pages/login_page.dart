
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
          Text("Login"),
          TextFormField(),
          SizedBox(height: 20,),
          Text("Senha"),
          TextFormField(
            obscureText: true,
          ),
          SizedBox(height: 20,),
          Container(
            height: 46,
            child: RaisedButton(
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              color: Colors.blue,
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
