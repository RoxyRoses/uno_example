import 'package:flutter_modular/flutter_modular.dart';
import 'package:uno/uno.dart';

import 'features/get/external/datasources/get_facts_datasource_impl.dart';
import 'features/get/infra/implementations/get_facts_repository_impl.dart';
import 'features/get/infra/implementations/get_facts_usecase_impl.dart';
import 'features/get/presentation/getfact_store.dart';
import 'features/get/presentation/main.dart';

class AppModule extends Module{
  @override
  List<Bind> get binds => [
    Bind((i) => GetFactsUseCase(i())),
    Bind((i) => GetFactsDataSource(i())),
    Bind((i) => GetFactsRepository(i())),
    Bind((i) => GetFactStore(i())),
    Bind((i) => Uno()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,child: (_, __) => const MyApp()),
      ];

}