import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Theme1")
        ),
        drawer: Drawer(
            child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                      DrawerHeader(
                        child: Text('Menu Home'),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        title: Text('Item 1'),
                        onTap: () {
                          // coloque aqui a navegação
                        },
                      ),
                      ListTile(
                        title: Text('Item 2'),
                        onTap: () {
                          // coloque aqui a navegação
                        },
                      ),
                    ],
            ),
        ),
        body: FloatingActionButton(
                    child: const Icon(Icons.add),
                    onPressed: () {},
                  ),
    );
  }
}


