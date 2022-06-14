import 'package:flutter/material.dart';

void main()
{
    runApp( MeuApp() );
}

class MeuApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp
        (
            title: 'Hello world',
            theme: ThemeData.dark(),
            home: HomePage(),
        );
    }
}

class HomePage extends StatelessWidget
{
    @override
    Widget build(BuildContext contexto)
    {
        return const Material( child: Text("Hello world text") );
    }
}