import 'package:flutter_modular/flutter_modular.dart';
import 'package:uno/uno.dart';

import 'features/delete/external/datasources/send_delete_datasource_impl.dart';
import 'features/delete/infra/implementations/send_delete_repository_impl.dart';
import 'features/delete/infra/implementations/send_delete_usecase_impl.dart';
import 'features/delete/presentation/send_delete_store.dart';
import 'features/get/external/datasources/get_facts_datasource_impl.dart';
import 'features/get/infra/implementations/get_facts_repository_impl.dart';
import 'features/get/infra/implementations/get_facts_usecase_impl.dart';
import 'features/get/presentation/getfact_store.dart';
import 'features/post/external/datasources/send_post_datasource_impl.dart';
import 'features/post/infra/implementations/send_post_repository_impl.dart';
import 'features/post/infra/implementations/send_post_usecase_impl.dart';
import 'features/post/presentation/send_post_store.dart';
import 'main.dart';

class AppModule extends Module{
  @override
  List<Bind> get binds => [
    Bind((i) => GetFactsUseCase(i())),
    Bind((i) => SendGetDataSource(i())),
    Bind((i) => GetFactsRepository(i())),
    Bind((i) => GetFactStore(i())),
    Bind((i) => SendPostUseCase(i())),
    Bind((i) => SendPostDataSource(i())),
    Bind((i) => SendPostRepository(dataSource: i())),
    Bind((i) => SendPostStore(i())),
    Bind((i) => SendDeleteUseCase(i())),
    Bind((i) => SendDeleteDataSource(i())),
    Bind((i) => SendDeleteRepository(i())),
    Bind((i) => SendDeleteStore(i())),
    Bind((i) => Uno()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,child: (_, __) => const MyApp()),
      ];

}