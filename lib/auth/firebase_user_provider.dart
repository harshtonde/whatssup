import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WhatssupFirebaseUser {
  WhatssupFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

WhatssupFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WhatssupFirebaseUser> whatssupFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<WhatssupFirebaseUser>(
            (user) => currentUser = WhatssupFirebaseUser(user));
