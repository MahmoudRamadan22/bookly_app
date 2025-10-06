import 'package:equatable/equatable.dart';

class ListPrice extends Equatable {
  final double amount;
  final String currencyCode;

  const ListPrice({required this.amount, required this.currencyCode});

  factory ListPrice.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return const ListPrice(amount: 0.0, currencyCode: 'EGP');
    }

    return ListPrice(
      amount: (json['amount'] is int)
          ? (json['amount'] as int).toDouble()
          : (json['amount'] as num?)?.toDouble() ?? 0.0,
      currencyCode: (json['currencyCode'] ?? 'EGP').toString(),
    );
  }

  Map<String, dynamic> toJson() => {
    'amount': amount,
    'currencyCode': currencyCode,
  };

  @override
  List<Object?> get props => [amount, currencyCode];
}
