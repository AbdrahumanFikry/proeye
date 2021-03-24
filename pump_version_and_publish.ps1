cider bump patch -b
cider bump build
flutter build apk
firebase appdistribution:distribute build/app/outputs/flutter-apk/app-release.apk --app 1:1036662807132:android:857ffaeef51ee9fb312499 --release-notes "Bug fixes and improvements" --groups "proeye-testers"