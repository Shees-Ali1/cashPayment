// Create a controller class to manage the interaction between the model and the view
import '../Model/Model.dart';

class CashPaymentController {
  final CashPaymentModel _model;

  CashPaymentController(this._model);

  // Add methods to handle user interactions and update the model accordingly
  // For example, you can have a method to handle the "New Sale" button press
  void handleNewSale(String email) {
    // Implement your logic here, possibly updating the model or performing other actions
    // You can use the _model instance to access the model's properties and methods
  }
}
