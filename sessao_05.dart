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
    final int contador = 1;

    @override
    createState()
    {
        return HomePageState();
    }
}

class HomePageState extends State<HomePage>
{
    int contador = 1, divisor = 1;
    bool visivel = true;
    final TextEditingController _tecNumero = TextEditingController();

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
                        TextField
                        (
                            controller: _tecNumero,
                            decoration: const InputDecoration
                            (
                                label: Text('Número'),
                                border: OutlineInputBorder()
                            ),
                        ),
                        const SizedBox( height: 20 ),
                        mostrar(),
                        const SizedBox( height: 20 ),
                        Row
                        (
                            children:
                            [
                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            String num = _tecNumero.text;
                                            divisor = int.tryParse(num) ?? 1;
                                            contador++;
                                        });
                                    },
                                    child: const Icon(Icons.add),
                                ),

                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            String num = _tecNumero.text;
                                            divisor = int.tryParse(num) ?? 1;
                                            contador--;
                                        });
                                    },
                                    child: const Icon(Icons.remove),
                                ),

                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            String num = _tecNumero.text;
                                            divisor = int.tryParse(num) ?? 1;
                                            contador = 1;
                                        });
                                    },
                                    child: const Icon(Icons.refresh),
                                ),

                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            visivel = true;
                                        });
                                    },
                                    child: const Icon(Icons.visibility),
                                ),

                                ElevatedButton
                                (
                                    onPressed: ()
                                    {
                                        setState(()
                                        {
                                            visivel = false;
                                        });
                                    },
                                    child: const Icon(Icons.visibility_off),
                                ),
                            ]
                        )
                    ]
                )
            )
        );
    }

    Widget mostrar()
    {
        if(!visivel)
        {
            return const SizedBox(height: 20);
        }

        return
        (
            (contador%divisor == 0) ?

            const Icon (Icons.fiber_pin, size: 25)
            :
            Text('$contador', style: const TextStyle(fontSize: 20))
        );
    }

    @override
    void dispose()
    {
        super.dispose();
        _tecNumero.dispose();
    }
}