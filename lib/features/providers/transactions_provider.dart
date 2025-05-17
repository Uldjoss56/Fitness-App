import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionNotifier extends StateNotifier<List<dynamic>> {
  TransactionNotifier(super.transactions);

  void updateTransaction(List<dynamic> transactions) {
    state = transactions;
  }
}

final transactionsProvider =
    StateNotifierProvider<TransactionNotifier, List<dynamic>>(
  (ref) => TransactionNotifier(
    [],
  ),
);
