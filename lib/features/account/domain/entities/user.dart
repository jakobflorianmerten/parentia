import 'package:algoliasearch/algoliasearch.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String id;
  String email;
  String fullName;
  String username;
  String profilePicture;

  User({
    required this.id,
    required this.email,
    required this.fullName,
    required this.username,
    required this.profilePicture,
  });

  factory User.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return User(
      id: doc.id,
      email: data['email'],
      username: data['username'],
      fullName: data['name'],
      profilePicture: data['profileImage'],
    );
  }
}
