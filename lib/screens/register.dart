import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Container(
        color: Theme.of(context).primaryColorLight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 8,
              margin: EdgeInsets.only(left: 10, right: 10),
                      child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: "Name"
                        ),
                    ),TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email"
                        ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password"
                        ),
                    ),
                    TextField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Confirm Password"
                        ),
                    ),
                    ElevatedButton(
                        onPressed: () => print("Register Clicked"),
                        child: Text('Register'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.infinity, 36),
                        ),),
                         InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text('Back To Login'),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}