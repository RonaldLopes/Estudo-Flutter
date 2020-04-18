
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
          TextFormField(
            style: TextStyle(
              fontSize: 20
            ),
            decoration: InputDecoration(
              labelText: "Login",
              labelStyle: TextStyle(
                fontSize: 20
              ),
              hintText: "Digite seu login"
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            obscureText: true,
            style: TextStyle(
                fontSize: 20
            ),
            decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                    fontSize: 20
                ),
                hintText: "Digite sa senha"
            ),
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
