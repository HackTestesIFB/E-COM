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


class HomePage extends StatelessWidget
{
    @override
    Widget build(BuildContext contexto)
    {
        return Material
        (
            child: Stack
            (
                children:
                [
                    Image.network
                    (
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRylnTCI2NTthKBX6b4ifXC8ifwv1FFpa6iJ7Ys9VBJXZlG9QrcFHUSGM635w&s',
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.fill
                    ),

                    Padding
                    (
                        padding: const EdgeInsets.all(10),
                        child: ListView
                        (
                            children:
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
                            ]
                        )
                    )
                ]
            )
        );
    }
}