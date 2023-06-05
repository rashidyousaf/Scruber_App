// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scrubr_client_app/common/core/services/auth_service.dart';

import '../models/tech_model.dart';

class TechFirestoreService {
  AuthService auth = AuthService();
  // this section for technician

  // creating instance of technicianData
  CollectionReference techData =
      FirebaseFirestore.instance.collection('techData');
  // add technician to firestore
  Future<void> saveTechInfo(TechModel techModel) async {
    await techData.doc(techModel.id).set(techModel.toJson());
  }

  Stream<TechModel> getTechData() {
    return techData.doc(auth.getCurrentUserId()).snapshots().map(
        (event) => TechModel.fromJson(event.data() as Map<String, dynamic>));
  }
}
