import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formkey = new GlobalKey<FormState>();
  List<String> _colors = ['', 'red', 'green', 'orange'];
  String _color = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: new SafeArea(
        top: false,
        bottom: false,
        child: new Form(
          key: _formkey,
          autovalidate: true,
          child: new ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: <Widget>[
              new TextFormField(
                decoration: const InputDecoration(
                    icon: const Icon(Icons.person),
                    hintText: 'Enter Your First name',
                    labelText: 'Name'),
              ),
              new TextFormField(
                decoration: const InputDecoration(
                    icon: const Icon(Icons.calendar_today),
                    hintText: 'Enter Your Date of Birth',
                    labelText: 'Date of Birth'),
                keyboardType: TextInputType.datetime,
              ),
              new TextFormField(
                decoration: const InputDecoration(
                    icon: const Icon(Icons.phone),
                    hintText: 'Énter your Phone number',
                    labelText: 'Phone'),
                keyboardType: TextInputType.phone,
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              ),
              new TextFormField(
                decoration: const InputDecoration(
                    icon: const Icon(Icons.email),
                    hintText: 'Enter your Email',
                    labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
              ),
              new Container(
                padding: const EdgeInsets.only(left: 40.0, top: 20.0),
                child: new RaisedButton(
                  child: const Text('Submit'),
                  onPressed: null,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
