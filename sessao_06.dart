import 'package:flutter/material.dart';

void main()
{
    runApp( MeuApp() );
}

class MeuApp extends StatelessWidget
{
    @override
    Widget build(BuildContext contexto)
    {
        return MaterialApp
        (
            title: 'Hello',
            theme: ThemeData( primarySwatch: Colors.red ),
            debugShowCheckedModeBanner: false,
            home: HomePage(),
        );
    }
}

class HomePage extends StatefulWidget
{
    @override
    createState()
    {
        return HomePageState();
    }
}

class HomePageState extends State<HomePage>
{
    String resultado = 'vazio';
    final TextEditingController tecNumero1 = TextEditingController();
    final TextEditingController tecNumero2 = TextEditingController();


    @override
    Widget build(BuildContext contexto)
    {
        return Material
        (
            color: Colors.white,
            child: Padding
            (
                padding: const EdgeInsets.all(10),
                child: Column
                (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                        SizedBox(height: 20),

                        Text
                        (
                            resultado,
                            style: TextStyle(fontSize: 20)
                        ),

                        SizedBox(height: 20),

                        TextField
                        (
                            controller: tecNumero1,
                            decoration: const InputDecoration
                            (
                                label: Text('Número 1'),
                                border: OutlineInputBorder()
                            ),
                        ),

                        const SizedBox( height: 20 ),

                        TextField
                        (
                            controller: tecNumero2,
                            decoration: const InputDecoration
                            (
                                label: Text('Número 2'),
                                border: OutlineInputBorder()
                            ),
                        ),

                        const SizedBox( height: 20 ),

                        Row
                        (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:
                            [
                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            try
                                            {
                                                resultado = '${double.parse(tecNumero1.text) + double.parse(tecNumero2.text)}';
                                            }
                                            catch(error)
                                            {
                                                resultado = 'ERRO';
                                            }
                                        });
                                    },
                                    child: const Text('+', style: TextStyle(fontSize: 20)),
                                ),

                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            try
                                            {
                                                resultado = '${double.parse(tecNumero1.text) - double.parse(tecNumero2.text)}';
                                            }
                                            catch(error)
                                            {
                                                resultado = 'ERRO';
                                            }
                                        });
                                    },
                                    child: const Text('-', style: TextStyle(fontSize: 20)),
                                ),

                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            try
                                            {
                                                resultado = '${double.parse(tecNumero1.text) * double.parse(tecNumero2.text)}';
                                            }
                                            catch(error)
                                            {
                                                resultado = 'ERRO';
                                            }
                                        });
                                    },
                                    child: const Text('*', style: TextStyle(fontSize: 20)),
                                ),

                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            try
                                            {
                                                resultado = '${double.parse(tecNumero1.text) / double.parse(tecNumero2.text)}';
                                            }
                                            catch(error)
                                            {
                                                resultado = 'ERRO';
                                            }
                                        });
                                    },
                                    child: const Text('/', style: TextStyle(fontSize: 20)),
                                ),

                            ]
                        )
                    ]
                )
            )
        );
    }

    @override
    void dispose()
    {
        super.dispose();
        tecNumero1.dispose();
        tecNumero2.dispose();
    }
}