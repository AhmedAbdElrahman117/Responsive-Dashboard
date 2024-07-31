class TransactionHistoryModel {
  final String title;
  final String date;
  final String amount;
  final bool? isWithdrawaled;

  const TransactionHistoryModel({
    required this.title,
    required this.date,
    required this.amount,
    this.isWithdrawaled = false,
  });
}
