import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA0SinZfEmyKNPmSPTsNDpLkTkLoN_VJLA",
            authDomain: "uniswap-login.firebaseapp.com",
            projectId: "uniswap-login",
            storageBucket: "uniswap-login.appspot.com",
            messagingSenderId: "1044322181873",
            appId: "1:1044322181873:web:4902c1319307dfdf837f50",
            measurementId: "G-5MDN6QSYRR"));
  } else {
    await Firebase.initializeApp();
  }
}
