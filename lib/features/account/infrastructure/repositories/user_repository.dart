import 'dart:async';
import 'dart:io';

import 'package:algoliasearch/algoliasearch.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:parentia/core/algolia_config.dart';
import 'package:parentia/features/account/domain/entities/notification.dart';
import 'package:parentia/features/account/domain/entities/user.dart';
import 'package:parentia/features/account/domain/repositories/user_repository.dart';
import 'package:parentia/features/account/domain/user_failures.dart';
import 'package:rxdart/rxdart.dart';

class UserRepositoryImpl implements UserRepository {
  final _auth = auth.FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  final _storage = FirebaseStorage.instance;

  @override
  Stream<User> get currentUserStream => getCurrentUserStream();

  @override
  Stream<List<Notification>> get notificationsStream =>
      getNotificationsStream();

  Stream<User> getCurrentUserStream() {
    return _auth.authStateChanges().switchMap((authUser) {
      if (authUser == null) {
        return Stream<User>.empty();
      }
      return _firestore
          .collection('users')
          .doc(authUser.uid)
          .snapshots()
          .map((snapshot) => User.fromFirestore(snapshot));
    });
  }

  Stream<List<Notification>> getNotificationsStream() {
    String currentUserId = _auth.currentUser!.uid;
    return _firestore
        .collection('users')
        .doc(currentUserId)
        .collection('notifications')
        .orderBy('createdAt', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs
              .map((doc) => Notification.fromFirestore(doc))
              .toList(),
        );
  }

  static Future<User?> getCurrentUser() async {
    try {
      final uid = auth.FirebaseAuth.instance.currentUser!.uid;
      final result = await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get();
      return User(
        id: uid,
        email: result['email'] as String,
        fullName: result['name'] as String,
        username: result['username'] as String,
        profilePicture:
            result['profileImage'] != null && result['profileImage'] != ''
            ? result['profileImage'] as String
            : '',
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Future<Either<UserFailures, Unit>> createUser(
    Option<File> profilePicture,
    String fullName,
    String username,
  ) async {
    try {
      final uid = _auth.currentUser!.uid;
      final email = _auth.currentUser!.email!;
      String profileImagePath = '';

      // first check if the username already exists
      final checkUsernameResult = await _firestore
          .collection('users')
          .where('username', isEqualTo: username)
          .limit(1)
          .get();
      if (checkUsernameResult.docs.isNotEmpty) {
        return left(UserFailures.usernameAlreadyExists());
      }

      // first uplaod profile pc to cloud storage
      if (profilePicture.isSome()) {
        File fileToUpload = profilePicture.getOrElse(() => throw Error());

        final ref = _storage.ref().child('users/$uid/profile');
        final uploadTask = await ref.putFile(fileToUpload);
        profileImagePath = await uploadTask.ref.getDownloadURL();
      }

      // then save the user data to firestore
      final data = {
        'name': fullName,
        'username': username,
        'profileImage': profileImagePath,
        'email': email,
      };

      await _firestore
          .collection('users')
          .doc(uid)
          .set(data, SetOptions(merge: true))
          .timeout(Duration(seconds: 10));
      return right(unit);
    } on TimeoutException {
      return left(UserFailures.serverError());
    } on FirebaseException catch (e, _) {
      return left(UserFailures.serverError());
    } on PlatformException catch (_) {
      return left(UserFailures.serverError());
    } catch (e, _) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, Unit>> updateUser(
    String userId,
    String? fullName,
    File? profilePicture,
    String? email,
    String? username,
  ) async {
    try {
      Map<String, String> data = <String, String>{};
      String profileImagePath = '';
      // First check if the profile picture changed and if so, upload the new one to storage
      if (profilePicture != null) {
        File fileToUpload = profilePicture;

        final ref = _storage.ref().child('users/$userId/profile');
        final uploadTask = await ref.putFile(fileToUpload);
        profileImagePath = await uploadTask.ref.getDownloadURL();
        if (profileImagePath != "") data['profileImage'] = profileImagePath;
      }
      // Then check if email or fullName changed and update the firstore user table
      if (email != null || fullName != null || username != null) {
        if (email != null) data['email'] = email;
        if (fullName != null) data['name'] = fullName;
        if (username != null) data['username'] = username;
      }
      if (data.isNotEmpty) {
        await _firestore.collection('users').doc(userId).update(data);
      }

      return right(unit);
    } on PlatformException catch (e) {
      print(e);
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, List<User>>> loadAllUsers() async {
    try {
      final currentUid = _auth.currentUser!.uid;
      final result = await _firestore
          .collection('users')
          .where(FieldPath.documentId, isNotEqualTo: currentUid)
          .get();
      final users = result.docs.map((doc) {
        final data = doc.data();
        return User(
          id: doc.id,
          fullName: data['name'] as String,
          username: data['username'] as String,
          email: data['email'] as String,
          profilePicture:
              data['profileImage'] != null && data['profileImage'] != ''
              ? data['profileImage'] as String
              : '',
        );
      });
      return right(users.toList());
    } on PlatformException catch (e) {
      print(e);
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, User>> loadUserById(String userId) async {
    try {
      final result = await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .get();
      if (!result.exists) {
        return left(UserFailures.userNotFound());
      }
      return right(
        User(
          id: userId,
          email: result['email'] as String,
          fullName: result['name'] as String,
          username: result['username'] as String,
          profilePicture:
              result['profileImage'] != null && result['profileImage'] != ''
              ? result['profileImage'] as String
              : '',
        ),
      );
    } catch (_) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, List<User>>> searchUsersByUsernameOrName(
    String input,
  ) async {
    try {
      final currentUid = _auth.currentUser!.uid;
      final searchResponse = await algoliaClient.searchIndex(
        request: SearchForHits(
          indexName: 'users',
          query: input,
          hitsPerPage: 5,
        ),
      );
      List<String> userIds = searchResponse.hits
          .map((hit) => hit.objectID)
          .toList();
      if (userIds.isEmpty) return right(List.empty());
      final fireStoreResult = await _firestore
          .collection('users')
          .where(FieldPath.documentId, whereIn: userIds)
          .where(FieldPath.documentId, isNotEqualTo: currentUid)
          .get();
      List<User> users = fireStoreResult.docs
          .map((doc) => User.fromFirestore(doc))
          .toList();

      return right(users);
    } catch (e) {
      print(e);
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, Unit>> saveNotificationToken(
    String uid,
    String fcmToken,
  ) async {
    try {
      await _firestore.collection('users').doc(uid).update({
        'fcmToken': fcmToken,
      });
      return right(unit);
    } on PlatformException catch (e) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, List<Notification>>> loadAllNotificationsByUserId(
    String uid,
  ) async {
    try {
      final result = await _firestore
          .collection('users')
          .doc(uid)
          .collection('notifications')
          .orderBy('createdAt', descending: true)
          .get();
      final notifications = result.docs
          .map((doc) => Notification.fromFirestore(doc))
          .toList();
      return right(notifications.toList());
    } on PlatformException catch (e) {
      return left(UserFailures.serverError());
    }
  }

  @override
  Future<Either<UserFailures, Unit>> markNotificationsAsRead(
    List<Notification> notifications,
  ) async {
    final uid = _auth.currentUser!.uid;
    final batch = _firestore.batch();
    try {
      final colRef = _firestore
          .collection('users')
          .doc(uid)
          .collection('notifications');

      for (final notif in notifications) {
        final docRef = colRef.doc(notif.id);
        batch.update(docRef, {'read': true});
      }
      await batch.commit();
      return right(unit);
    } on FirebaseException catch (e) {
      return left(UserFailures.serverError());
    }
  }
}
