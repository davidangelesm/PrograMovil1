import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_in_controller.dart';

class SignInPage extends StatelessWidget {
  SignInController control = Get.put(SignInController());

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryFixed,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primaryFixed,
                    width: 10,
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/Logo_Ulima.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryFixed,
              border: Border.all(
                color: Theme.of(context).colorScheme.onSecondaryFixedVariant,
                width: 2,
              ),
            ),
            child: Column(
              children: [
                Text("Ingresa esta información"),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Usuario",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primaryFixed,
                        width: 2,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Contraseña",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primaryFixed,
                        width: 2,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: Text("Iniciar Sesión"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: null,
        body: _buildBody(context),
      ),
    );
  }
}
