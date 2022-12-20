import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/model/shopping_item_model.dart';

final shoppingListProvider =
    StateNotifierProvider<ShoppingListNotifier, List<ShoppingItemModel>>(
  (ref) => ShoppingListNotifier(),
);

// 'super' 에 StateNotifier 제너릭이 된 값(List<ShoppingItemModel>)을
//  초기화 해주어야 함.

class ShoppingListNotifier extends StateNotifier<List<ShoppingItemModel>> {
  ShoppingListNotifier()
      : super(
          [
            ShoppingItemModel(
              name: '김치',
              quantitiy: 3,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '라면',
              quantitiy: 5,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '삼겹살',
              quantitiy: 10,
              hasBought: false,
              isSpicy: false,
            ),
            ShoppingItemModel(
              name: '수박',
              quantitiy: 2,
              hasBought: false,
              isSpicy: true,
            ),
            ShoppingItemModel(
              name: '카스테라',
              quantitiy: 5,
              hasBought: false,
              isSpicy: false,
            ),
          ],
        );

  void toggleHasBought({
    required String name,
  }) {
    state = state
        .map(
          (e) => e.name == name
              ? ShoppingItemModel(
                  name: e.name,
                  quantitiy: e.quantitiy,
                  hasBought: !e.hasBought,
                  isSpicy: e.isSpicy,
                )
              : e,
        )
        .toList();
  }
}
