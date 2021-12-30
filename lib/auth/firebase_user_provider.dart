import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NotedFirebaseUser {
  NotedFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

NotedFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NotedFirebaseUser> notedFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<NotedFirebaseUser>((user) => currentUser = NotedFirebaseUser(user));
