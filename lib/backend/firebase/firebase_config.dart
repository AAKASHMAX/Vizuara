import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBily71zrxN_TExvvomh0ysrsnn_zyQ6n4",
            authDomain: "vizuara-app-felcys.firebaseapp.com",
            projectId: "vizuara-app-felcys",
            storageBucket: "vizuara-app-felcys.appspot.com",
            messagingSenderId: "360814950248",
            appId: "1:360814950248:web:391fb1a5ae434757d308dd"));
  } else {
    await Firebase.initializeApp();
  }
}
