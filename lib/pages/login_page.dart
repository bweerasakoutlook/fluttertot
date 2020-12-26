import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple[800],Colors.lightBlue],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          )
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(40),
              child: Column(
                children: [
                  FlutterLogo(size: 80),
                  SizedBox(height: 40,),
                  FormBuilder(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        FormBuilderTextField(
                          name: 'email',
                          decoration: InputDecoration(
                            labelStyle: TextStyle(color: Colors.blue[300],fontWeight: FontWeight.values[5]),
                            labelText:'email',
                          ),
                          // onChanged: _onChanged,
                          // valueTransformer: (text) => num.tryParse(text),
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(context),
                            FormBuilderValidators.numeric(context),
                            FormBuilderValidators.max(context, 70),
                          ]),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: MaterialButton(
                          // color: Theme.of(context).accentColor,
                          child: Text(
                            "Submit",
                            style: TextStyle(color: Colors.blue[300],fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            _formKey.currentState.save();
                            if (_formKey.currentState.validate()) {
                              print(_formKey.currentState.value);
                            } else {
                              print("validation failed");
                            }
                          },
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: MaterialButton(
                          // color: Theme.of(context).backgroundColor,
                          child: Text(
                            "Reset",
                            style: TextStyle(color: Colors.blue[300],fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            _formKey.currentState.reset();
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            ),
        ),
      ),
    );
  }
}