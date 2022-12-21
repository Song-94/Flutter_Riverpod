class ShoppingItemModel {
  // final 로 변수 생성 했기 때문에
  // 한번 생성 후에 값 변경이 불가능하여 매번 클래스를 재 생성 해주어야함

  // 이름
  final String name;

  // 갯수
  final int quantity;

  // 구매 여부
  final bool hasBought;

  // 매운지
  final bool isSpicy;

  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.hasBought,
    required this.isSpicy,
  });

  ShoppingItemModel copyWith({
    String? name,
    int? quantity,
    bool? hasBought,
    bool? isSpicy,
  }) {
    return ShoppingItemModel(
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      hasBought: hasBought ?? this.hasBought,
      isSpicy: isSpicy ?? this.isSpicy,
    );
  }
}
