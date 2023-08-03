import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

import 'src/config/router/app_router.dart';
import 'src/config/themes/palette.dart';
import 'src/domain/repositories/api_repository.dart';
import 'src/presentation/cubits/remote/remote_articles_cubit.dart';
import 'src/locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(MyApp());
}
// assuing this is the root widget of your App
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RemoteArticlesCubit(
            locator<ApiRepository>(),
          )..getBreakingNewsArticles(),
        )
      ],
      child:OKToast(
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
          title: 'Flutter Demo',
          theme: AppTheme.material,
        )
      )
    );
  }
}
