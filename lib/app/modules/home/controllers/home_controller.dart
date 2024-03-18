import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<Transaction> transactions = <Transaction>[
    Transaction('1', 'Home Rent', 'Send rent to owner', '-\$1500.00', false),
    Transaction('2', 'Shopping', 'Clothes and shoes', '-\$1500.00', false),
    Transaction('3', 'Salary', 'March salary', '+\$1500.00', true),
    Transaction('4', 'Restaurant', 'Dinner outside', '-\$200.00', false),
    Transaction('5', 'Grocery', 'Daily needs', '-\$200.00', false),
    Transaction(
        '6', 'Transportation', 'Travelled from bus', '-\$200.00', false),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

class Transaction {
  String? image, title, subtitle, amount;
  bool? isIncome;
  Transaction(
      this.image, this.title, this.subtitle, this.amount, this.isIncome);
}
