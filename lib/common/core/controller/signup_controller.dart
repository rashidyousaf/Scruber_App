import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:scrubr_client_app/const/conts.dart';
import '../models/user_role_model.dart';
import '../services/auth_service.dart';
import '../services/firestore_service.dart';
import '../../../technician/core/models/tech_model.dart';
import '../../../technician/core/services/tech_firestore_service.dart';
import '../../../customer/core/models/customer_model.dart';
import '../../../customer/core/services/customer_firestore_service.dart';

class SignupController extends ChangeNotifier {
  // this section for controllers
  final TextEditingController roleController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController profileImgController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  // this object is common firebase services
  FirestoreService fS = FirestoreService();
  // this section firebae auth firebase services
  AuthService aS = AuthService();
  //  this section technician firestore service
  TechFirestoreService tFS = TechFirestoreService();
  // this object of customer firestore services
  CustomerFirestoreService cFS = CustomerFirestoreService();

//  this is function to get role from home screen
  void getRole(String role) {
    roleController.text = role.trim();
    log("role: $role");
  }

// this function use store data on the fireStore
  void saveUserData() async {
    final String role = roleController.text.trim();
    final String userId = aS.getCurrentUserId();
    final String email = aS.getCurrentUseremail();

    UserRoleModel userRoleModel = UserRoleModel(id: userId, role: role);
    await fS.saveUserInfo(userRoleModel);
// if user is technician then store data into Technician Collection
    if (role == "technician") {
      TechModel techModel = TechModel(
        id: userId,
        email: email,
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        profileImg: profileImgController.text.trim(),
      );
      await tFS.saveTechInfo(techModel);
      log("Technician Data saved successfully");

      // if user role is customer then sore data on the Customer Collection
    } else if (role == "customer") {
      CustomerModel customerModel = CustomerModel(
        id: userId,
        email: email,
        firstName: firstNameController.text.trim(),
        lastName: lastNameController.text.trim(),
        profileImg: profileImgController.text.trim(),
      );
      await cFS.saveCustomerInfo(customerModel);
      log("Customer Data saved successfully");
    }

    clearTextFields();
    notifyListeners();
  }

  void clearTextFields() {
    firstNameController.clear();
    lastNameController.clear();
    profileImgController.clear();
    emailController.clear();
    passwordController.clear();
    roleController.clear();
  }

// this section for singup witn google
  void handleGoogleLogin() async {
    final result = await aS.googleLogin();

    if (result != null) {
      final String role = roleController.text.trim();
      final String userId = aS.getCurrentUserId();

      UserRoleModel userRoleModel = UserRoleModel(id: userId, role: role);

      await fS.saveUserInfo(userRoleModel);
      // Get the user's role from your application logic

      // Store user data based on the role in the Firebase collection
      if (role == 'customer') {
        CustomerModel customerModel = CustomerModel(
          id: userId,
          email: result.email,
          firstName: result.displayName,
          lastName: lastNameController.text.trim(),
          profileImg: result.photoUrl,
        );
        await cFS.saveCustomerInfo(customerModel);
        log("Customer Data saved successfully");
        // if user is technician then store data into Technician Collection
      } else if (role == 'technician') {
        TechModel techModel = TechModel(
          id: userId,
          email: result.email,
          firstName: result.displayName,
          lastName: lastNameController.text.trim(),
          profileImg: result.photoUrl,
        );
        await tFS.saveTechInfo(techModel);
        log("Technician Data saved successfully");
      } else {
        print("Unknown role: $role");
      }
    } else {
      // Handle the case when the sign-in process is canceled or encounters an error
    }
    notifyListeners();
  }

  // this for obscureText password textfield
  bool _obscureText = true;

  bool get obscureText => _obscureText;

  void togglePasswordVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }

  // this section for progress indecator on buttons

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  void setIsLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }
}
