import 'package:flutter/material.dart';
import 'register.dart';
import 'package:password_text_field/password_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Login Form'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _openUserReg (BuildContext ctx) {
    showModalBottomSheet(context: ctx, isScrollControlled: true, builder: (_) {
      return const UserReg();
    },);
  }

@override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField (decoration: InputDecoration (labelText: 'Username'),),
            const PasswordTextField(decoration: InputDecoration(hintText: 'Password'),),
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {

              },
              ),
            ElevatedButton(
              child: const Text('Register'),
              onPressed: () => _openUserReg( (context),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
