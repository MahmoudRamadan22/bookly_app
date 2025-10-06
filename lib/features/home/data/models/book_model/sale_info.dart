import 'package:bookly/features/home/data/models/book_model/list_price.dart';
import 'package:equatable/equatable.dart';

class SaleInfo extends Equatable {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  final ListPrice amount;

  const SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
    required this.amount,
  });

  factory SaleInfo.fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return const SaleInfo(
        country: '',
        saleability: '',
        isEbook: false,
        amount: ListPrice(amount: 0.0, currencyCode: 'EGP'),
      );
    }

    return SaleInfo(
      country: json['country'] as String?,
      saleability: json['saleability'] as String?,
      isEbook: json['isEbook'] as bool?,
      amount: ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>?),
    );
  }

  Map<String, dynamic> toJson() => {
    'country': country,
    'saleability': saleability,
    'isEbook': isEbook,
    'listPrice': amount.toJson(),
  };

  @override
  List<Object?> get props => [country, saleability, isEbook, amount];
}
