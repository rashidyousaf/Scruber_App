import 'package:scrubr_client_app/common/core/services/auth_service.dart';
import 'package:scrubr_client_app/const/conts.dart';
import 'package:scrubr_client_app/customer/core/models/car_model.dart';
import 'package:scrubr_client_app/customer/core/services/customer_firestore_service.dart';

class CarController extends ChangeNotifier {
  TextEditingController imgController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController colorController = TextEditingController();

  CustomerFirestoreService cFS = CustomerFirestoreService();
  AuthService aS = AuthService();
  void saveCarsData() async {
    CarModel carModel = CarModel(
      id: aS.getCurrentUserId(),
      img: imgController.text.trim(),
      type: typeController.text.trim(),
      model: modelController.text.trim(),
      name: nameController.text.trim(),
      color: colorController.text.trim(),
    );
    await cFS.saveCarsInfo(carModel);
    clearTextfields();
    notifyListeners();
  }

  void clearTextfields() {
    imgController.clear();
    typeController.clear();
    modelController.clear();
    nameController.clear();
    colorController.clear();
  }
}
