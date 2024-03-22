class ItemModel {
  final String productID, productName, productThumbnail, productDiscription;

  final double unitPrice;

  const ItemModel({
    required this.productID,
    required this.productName,
    required this.productThumbnail,
    required this.unitPrice,
    required this.productDiscription,
  });
}
