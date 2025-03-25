import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mora/core/routing/app_router.dart';

class MoraApp extends StatelessWidget {
  final AppRouter appRouter;
  const MoraApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Mora App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        initialRoute: "/",
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
