import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:uno_example/app_module.dart';
import 'package:uno_example/features/get/domain/entities/cat_facts_entity.dart';
import 'package:uno_example/features/get/presentation/getfact_store.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uno Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Uno Demo'),
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
  @override
  void initState() {
    store.getCatFacts();
  }

  final store = Modular.get<GetFactStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uno Example'),
      ),
      body: ScopedBuilder<GetFactStore, Exception, List<CatFacts>>(
        store: store,
        onError: (_, Exception? error) {
          return const Center(
            child: Icon(
              Icons.search_off_rounded,
              size: 150,
            ),
          );
        },
        onLoading: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        onState: ((_, List state) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 15),

                  const Text('Get with Uno Example:',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  const SizedBox(height: 15),
                  const Text(
                    'Cat Fact',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    state[0].fact,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'Lenght',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(height: 15),

                  Text(
                    state[0].length.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

listToObject(List<dynamic> state) {}
