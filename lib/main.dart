import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pro_eye/app/routes/app_pages.dart';
import 'package:pro_eye/app/services/mainBinding.dart';
import 'package:pro_eye/app/utilities/appUtil.dart';

import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
    ],
  );
  runApp(
    // preview.DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) =>
    MyApp(), // Wrap your app
    // ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1080, 1920),
      builder: () => GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: GetMaterialApp(
          title: 'Pro Eye',
          debugShowCheckedModeBanner: false,
          // locale: preview.DevicePreview.locale(context),
          // builder: preview.DevicePreview.appBuilder,
          theme: AppUtil.appTheme,
          getPages: AppPages.routes,
          initialRoute: Routes.SPLASH,
          initialBinding: MainBinding(),
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
        ),
      ),
    );
  }
}
