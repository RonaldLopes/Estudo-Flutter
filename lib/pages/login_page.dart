
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
          _text("Login", "Informe o login",controller: _tLogin),
          SizedBox(height: 20,),
          _text("Senha", "Informe a senha", password: true, controller: _tSenha),
          SizedBox(height: 20,),
          _button("Login", _onClickLogin)
        ],
      ),
    );
  }

   _button(String text, Function onPressed) {
    return Form(
      key: _formKey,
      child: Container(
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
              onPressed: onPressed,
            ),
          ),
    );
  }

  TextFormField _text(String label, String hint_text, {bool password = false, TextEditingController controller}) {
    return TextFormField(
          obscureText: password ,
          controller: controller,
          autovalidate: true,
          validator: (String text){
            print(text.isEmpty);
            if(text.isEmpty){
                return "Digite o texto";
            }
            return null;
          },
          style: TextStyle(
            fontSize: 20
          ),
          decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(
              fontSize: 20
            ),
            hintText: hint_text
          ),
        );
  }

  void _onClickLogin() {
    bool formOk = _formKey.currentState.validate();
    print(formOk);
    if(!formOk){
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;
    print("Login: $login Senha: $senha");
  }
}
