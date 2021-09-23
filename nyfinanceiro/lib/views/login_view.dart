import 'package:flutter/material.dart';
import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/widgets/myWidget.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    return Padding(
        padding: EdgeInsets.fromLTRB(500, 50, 500, 200),
        child: MyWidget.Container(
          context: context,
          width: 50,
          child: Scaffold(
              backgroundColor: Colors.white,
              appBar: MyWidget.AppBar(
                  context: context,
                  leading: false
              ),
              body: SingleChildScrollView(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 20.0),
                          MyWidget.Logo(width: 200.0, height: 150.0),
                          MyWidget.Header(
                              context: context,
                              title: "Sistema Financeiro",
                              subtitle: "N.Y Comércio de Produtos Ópticos LTDA"),
                          Container(
                              margin:
                              EdgeInsets.only(left: MySize.size24!, right: MySize.size24!, top: 10),
                              child: Form(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 10.0),
                                      _loginFields(context: context),
                                      _forgotPassword(context:context),
                                      SizedBox(height: 10.0),
                                      _loginButton(context: context)
                                    ],
                                  )
                              )
                          ),
                          _newAccount(context: context)
                        ],
                      ),
                    ),
                  ],
                ),
              )
          )
        )
    );
  }

  // Build login form
  Widget _loginFields({required BuildContext context}) {
    return Column(
      children: [
        Container(
          margin:
          EdgeInsets.only(
              left: MySize.size24!, right: MySize.size24!, top: MySize.size10!),
          child: MyWidget.Container(
            context: context,
            width: 350,
            child: Column(
              children: <Widget>[
                MyWidget.TextFormField(
                    context: context,
                    //controller: _userController,
                    hintText: 'Usuário',
                    keyboardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    obscureText: false,
                    inputFormatters: [],
                    prefixIcon: Icon(Icons.email_outlined)
                ),
              ],
            ),
          ),
        ),
        Container(
          margin:
          EdgeInsets.only(left: MySize.size24!, right: MySize.size24!),
          child: MyWidget.Container(
            context: context,
            width: 350,
            child: Column(
              children: <Widget>[
                MyWidget.TextFormField(
                  context: context,
                  //controller: _passwordController,
                  hintText: 'Senha',
                  keyboardType: TextInputType.visiblePassword,
                  textCapitalization: TextCapitalization.none,
                  obscureText: true,
                  inputFormatters: [],
                  prefixIcon: Icon(Icons.password_outlined)
                ),
              ]
            ),
          ),
        ),
      ],
    );
  }

  // TextButton with forgot password link
  Widget _forgotPassword({required BuildContext context}) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
      child: MyWidget.TextButton(
          context: context,
          aligment: Alignment.bottomRight,
          onPressed: () {},
          text: "Esqueci a senha"
      )
    );
  }

  // Login form fxbutton
  Widget _loginButton({required BuildContext context}) {
    return ElevatedButton(
      child: Text("Acessar"),
      onPressed: () {},
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(19))
      )
    );
  }

  // Link to create a new account
  Widget _newAccount({required BuildContext context}) {
    return Container(
      padding: EdgeInsets.all(20),
      child: MyWidget.TextGestureDetector(
          context: context,
          onTap: () {},
          text: "Criar novo usuário"
      )
    );
  }
}
