import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../const/conts.dart';
import '../models/user_role_model.dart';

class FirestoreService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
// user role and id data

  CollectionReference users = FirebaseFirestore.instance.collection("users");
  // add user id and role

  Future<void> saveUserInfo(UserRoleModel userRoleModel) async {
    await users.doc(userRoleModel.id).set(userRoleModel.toJson());
  }

  // get rolebase data

  route(context) {
    users
        .doc(_firebaseAuth.currentUser!.uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        if (documentSnapshot.get('role') == "customer") {
          log("customer Data");
          Navigator.pushNamed(context, '/mapScreen');
          // );
          // getPlayerInfo();
        } else if (documentSnapshot.get('role') == "technician") {
          log("technician Data");
          Navigator.pushNamed(context, '/serviceproviderhomeScreen');
          // getCoachInfo();
        } else {
          // Utils().toastMessage('Data does not exist');
        }
      }
    });
  }
}
