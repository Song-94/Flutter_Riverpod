class ShoppingItemModel {
  // 이름
  final String name;
  // 갯수
  final int quantitiy;
  // 구매 여부
  final bool hasBought;
  // 매운지
  final bool isSpicy;

  ShoppingItemModel({
    required this.name,
    required this.quantitiy,
    required this.hasBought,
    required this.isSpicy,
  });
}
