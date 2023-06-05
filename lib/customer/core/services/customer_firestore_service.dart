import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:scrubr_client_app/common/core/services/auth_service.dart';
import 'package:scrubr_client_app/customer/core/models/car_model.dart';
import 'package:scrubr_client_app/customer/core/models/customer_model.dart';

class CustomerFirestoreService {
  AuthService auth = AuthService();
  // this section for Customer

  // creating instance of customerData
  CollectionReference customerData =
      FirebaseFirestore.instance.collection('customerData');
  // add Customer Data to firestore
  Future<void> saveCustomerInfo(CustomerModel customerhModel) async {
    await customerData.doc(customerhModel.id).set(customerhModel.toJson());
  }

// this section getting data from firebase
  Stream<CustomerModel> getCustomerData() {
    return customerData.doc(auth.getCurrentUserId()).snapshots().map((event) =>
        CustomerModel.fromJson(event.data() as Map<String, dynamic>));
  }
  //todo this is for cars

  // add cars on firebase
  // creating instance of cars
  CollectionReference cars = FirebaseFirestore.instance.collection('cars');
  // add cars data on firesote
  Future<void> saveCarsInfo(CarModel carModel) async {
    await cars.doc(carModel.id).set(carModel.toJson());
  }
  // getting data function

  Stream<CarModel> getCarData() {
    return cars.doc(auth.getCurrentUserId()).snapshots().map(
        (event) => CarModel.fromJson(event.data() as Map<String, dynamic>));
  }
}
