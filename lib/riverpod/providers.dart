import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/model/shopping_item_model.dart';
import 'package:flutter_state_riverpod/riverpod/state_notifier_provider.dart';

final filteredShoppingListProvider = Provider<List<ShoppingItemModel>>(
  (ref) {
    final filterState = ref.watch(filterProvider);
    final shoppingListState = ref.watch(shoppingListProvider);

    if (filterState == FilterState.all) {
      return shoppingListState;
    }

    return shoppingListState.where(
      (element) {
        return (filterState == FilterState.spicy)
            ? element.isSpicy
            : !element.isSpicy;
      },
    ).toList();
  },
);

enum FilterState {
  // 안매움
  notSpicy,
  // 매움
  spicy,
  // 전부
  all,
}

final filterProvider = StateProvider<FilterState>(
  (ref) {
    return FilterState.all;
  },
);
