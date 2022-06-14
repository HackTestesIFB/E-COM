import 'package:flutter/material.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior
{
    // Override behavior methods and getters like dragDevices
    @override
    Set<PointerDeviceKind> get dragDevices =>
    {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
    };
}

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
            // theme: ThemeData.dark(),
            home: HomePage(),
            scrollBehavior: MyCustomScrollBehavior(),
        );
    }
}

List<Widget> Make_List(int size)
{
    List<Widget> global_list = [];

    List<Widget> object_list = 
    [
        const SizedBox
        (
            width: 50,
            child: const Divider()
        ),

        Container
        (
            width: 50,
            height: 50,
            color: Colors.cyan
        ),

        const FlutterLogo(size: 50),

        const Text
        (
            'Hello world',
            style: TextStyle(fontSize: 20)
        )
    ];

    for(int i=0; i < size; ++i)
    {
        global_list.addAll(object_list);
    }

    return global_list;
}

class HomePage extends StatelessWidget
{
    @override
    Widget build(BuildContext contexto)
    {
        return Material
        (
            child: ListView
            (
                scrollDirection: Axis.horizontal,
                children: Make_List(10)
                /*[
                    const SizedBox
                    (
                        width: 50,
                        child: const Divider()
                    ),

                    Container
                    (
                        width: 50,
                        height: 50,
                        color: Colors.cyan
                    ),

                    const FlutterLogo(size: 50),

                    const Text
                    (
                        'Hello world',
                        style: TextStyle(fontSize: 20)
                    )
                ]*/
            )
        );
    }
}