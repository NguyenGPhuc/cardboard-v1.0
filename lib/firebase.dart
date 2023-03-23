import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseService {
  static Future<void> initializeApp() async {
    // Initialize Firebase App
    print('Initializing Firebase...');
    try {
      await Firebase.initializeApp();
      print('Firebase initialized!');
    } catch (e) {
      print('Failed to initialize Firebase: $e');
    }
  }

  // Get user reference to the database
  static DatabaseReference get usersRef {
    try {
      // Get a reference to the 'users' collection in the database
      return FirebaseDatabase.instance.ref().child('users');
    } catch (e, stackTrace) {
      throw FirebaseException(
        code: 'database-error',
        message: 'Failed to get user reference from the database',
        plugin: 'firebase_database',
        stackTrace: stackTrace,
      );
    }
  }

  // Get credit card reference to the database
  static DatabaseReference get cardsRef {
    try {
      // Get a reference to the 'cards' collection in the database
      return FirebaseDatabase.instance.ref().child('cards');
    } catch (e, stackTrace) {
      throw FirebaseException(
        code: 'database-error',
        message: 'Failed to get card reference from the database',
        plugin: 'firebase_database',
        stackTrace: stackTrace,
      );
    }
  }



  // // Get user reference to the database
  // static DatabaseReference get usersRef {
  //   // Get a reference to the 'users' collection in the database
  //   return FirebaseDatabase.instance.ref().child('users');
  // }
  //
  // // Get credit card reference to the database
  // static DatabaseReference get cardsRef {
  //   // Get a reference to the 'card' collection in the database
  //   return FirebaseDatabase.instance.ref().child('cards');
  // }
}