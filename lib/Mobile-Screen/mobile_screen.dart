import 'package:flutter/material.dart';

class MobileScreenResponsive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.deepPurple,
              height: double.infinity,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login with your account",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  buildTextFormField(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  secondBuildTextFormField(),
                  const SizedBox(
                    height: 23.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: buildMaterialButton(label: "Login"),
                          color: Colors.deepPurple,
                        ),
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          child: buildMaterialButton(label: "Register"),
                          color: Colors.deepPurple,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  MaterialButton buildMaterialButton({required String label}) {
    return MaterialButton(
      height: 60.0,
      onPressed: () {},
      child: Text(
        label.toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 20.0),
      ),
    );
  }

  TextFormField secondBuildTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: "Enter Password", border: OutlineInputBorder()),
    );
  }

  TextFormField buildTextFormField() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: "Enter Email", border: OutlineInputBorder()),
    );
  }
}
