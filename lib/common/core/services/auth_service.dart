// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scrubr_client_app/common/core/services/firestore_service.dart';
import 'package:scrubr_client_app/const/conts.dart';
// ignore: depend_on_referenced_packages
import 'package:google_sign_in/google_sign_in.dart';
import '../../../utils/utils.dart';
import '../models/user_model.dart';

class AuthService {
  FirestoreService fS = FirestoreService();
// auth firebase instance

  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  UserModel? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }

    return UserModel(
      user.uid,
      user.email,
    );
  }

  Stream<UserModel?>? get user {
    return _firebaseAuth.authStateChanges().map(_userFromFirebase);
  }

  // getting current user id

  getCurrentUserId() {
    return _firebaseAuth.currentUser?.uid;
  }

// getting user email
  getCurrentUseremail() {
    return _firebaseAuth.currentUser!.email;
  }

// this section for sign up or create  new user with email and password
  Future creatUserWithEmailAndPassword(
      String email, String password, context) async {
    try {
      final credetial = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Navigator.pushNamed(context, '/loginScreen');
        log("user created sucessfully");
      });
    } catch (e) {
      log(e.toString());
    }
  }

  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
    context,
  ) async {
    try {
      final credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Utils().toastMessage('Login successfully.', bgColor: nBColor);
        fS.route(context);
        // firestoreService.route(context);

        // Navigator.pushNamed(context, "/playerhomescreen");
      });
      // return _userFromFirebase(credential.user);
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Utils().toastMessage('No user found for that email.', bgColor: nBColor);
      } else if (e.code == 'wrong-password') {
        Utils().toastMessage('Wrong password provided for that user.',
            bgColor: nBColor);
      } else if (e.code == 'invalid-email') {
        Utils()
            .toastMessage('The email address is not valid.', bgColor: nBColor);
      }
    } catch (e) {
      log(" erro ${e.toString()}");
    }
    return null;
  }

// ! for apple setting required for google signin
  // this section for logIn with google
  GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<GoogleSignInAccount?> googleLogin() async {
    print("googleLogin method Called");
    try {
      var result = await _googleSignIn.signIn();
      if (result == null) {
        return null;
      }

      final userData = await result.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      FirebaseAuth.instance.signInWithCredential(credential);
      // print("Result $result");
      // print(result.email);
      // print(result.photoUrl);
      // print(result.id);

      return result;
    } catch (error) {
      print(error);
      return null;
    }
  }

  // this section for recover password
  recoverPassword(String email, context) {
    _firebaseAuth.sendPasswordResetEmail(email: email).then((value) {
      Utils().toastMessage(
          'We have send you email to recover password please check email');

      Navigator.pushNamed(context, '/loginScreen');
    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }

  // this mehode for signout
  Future<void> logout(BuildContext context) async {
    GoogleSignIn().signOut();
    _firebaseAuth.signOut().then((value) {
      log("signout");
      Utils().toastMessage('LogOut.', bgColor: nBColor);
      Navigator.pushNamed(context, '/loginScreen');
    }).onError((error, stackTrace) {
      log(error.toString());
    });
  }
}
