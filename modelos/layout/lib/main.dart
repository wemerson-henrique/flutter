import 'package:flutter/material.dart';
import 'package:haircut/src/login/login_page.dart';
import 'package:haircut/src/modelos/HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*material app é o material usado*/return MaterialApp(
      title: 'Haircut',
      debugShowCheckedModeBanner: false,//tira o baner
      theme: ThemeData(

        primarySwatch: Colors.blue,//paleta de cores da aplicação
      ),
      home: LoginPage(),//home chma a aplicação
    );
  }
}



/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold/*o scanffold é uma pagina faz fundo branco*/(
      appBar: AppBar(//appbaré o cabecalho

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
