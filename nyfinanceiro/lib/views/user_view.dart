import 'package:flutter/material.dart';
import 'package:nyfinanceiro/utils/size.dart';
import 'package:nyfinanceiro/widgets/myWidget.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);

    return Padding(
        padding: EdgeInsets.fromLTRB(500, 50, 500, 130),
        child: MyWidget.Container(
            context: context,
            width: 50,
            child: Scaffold(
                backgroundColor: Colors.white,
                appBar: MyWidget.AppBar(
                    context: context,
                    leading: true
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
                                title: "Novo usuário",
                                subtitle: "N.Y Comércio de Produtos Ópticos LTDA"),
                            Container(
                                margin:
                                EdgeInsets.only(left: MySize.size24!, right: MySize.size24!, top: 10),
                                child: Form(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10.0),
                                        _userFields(context: context),
                                        SizedBox(height: 20.0),
                                        _submitButton(context: context)
                                      ],
                                    )
                                )
                            ),
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
  Widget _userFields({required BuildContext context}) {
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
                    hintText: 'Nome',
                    keyboardType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                    obscureText: false,
                    inputFormatters: [],
                    prefixIcon: Icon(Icons.person)
                ),
              ],
            ),
          ),
        ),
        Container(
          margin:
          EdgeInsets.only(
              left: MySize.size24!, right: MySize.size24!, top: 0),
          child: MyWidget.Container(
            context: context,
            width: 350,
            child: Column(
              children: <Widget>[
                MyWidget.TextFormField(
                    context: context,
                    //controller: _userController,
                    hintText: 'E-mail',
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
                      hintText: 'Confirmar senha',
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

  // Login form fxbutton
  Widget _submitButton({required BuildContext context}) {
    return ElevatedButton(
        child: Text("Salvar"),
        onPressed: () {},
        style: ButtonStyle(
            padding: MaterialStateProperty.all(EdgeInsets.all(19))
        )
    );
  }
}
