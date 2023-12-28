import 'dart:developer';

import 'package:al_et_alwards/services/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService extends Database {
  // Create a CollectionReference called users that references the firestore collection
    CollectionReference voteCollection = FirebaseFirestore.instance.collection('votes');

    @override
    Future<void> createVote() {
      // Call the user's CollectionReference to add a new user
      return voteCollection
          .add({
            'full_name': 'John Doe',
            'company': 'Stokes and Sons',
            'age': 42,
          })
          .then((value) => log("Vote Added"))
          .catchError((error) => log("Failed to add vote: $error"));
    }
}
