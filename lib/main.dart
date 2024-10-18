import 'package:LyvelyExercise/configs/strings.dart';
import 'package:LyvelyExercise/modules/home/data/git_model.dart';
import 'package:LyvelyExercise/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();

  // Register the Hive adapter for the Repository model
  Hive.registerAdapter(GitRepositoryImplAdapter());
  Hive.registerAdapter(OwnerImplAdapter());

  // Open the box where the repositories will be stored
  await Hive.openBox<GitRepository>('repositories');

  // Adding ProviderScope enables Riverpod for the entire project
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /// create an instance of `AppRouter`
  final _appRouter = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Exercise',
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
