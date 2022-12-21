import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/riverpod/state_select_provider.dart';

class StateSelectProviderScreen extends ConsumerWidget {
  const StateSelectProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('StateSelectProviderScreen build');
    // 1. return ShoppingItemModel
    // final state = ref.watch(selectProvider);

    // 2. return Boolean(type of isSpicy).
    // 지정한 값이 변경(isSpicy) 이 rebuild
    final state = ref.watch(selectProvider.select((value) => value.isSpicy));

    ref.listen(
      selectProvider.select((value) => value.hasBought),
      (previous, next) {
        print(next);
      },
    );

    return DefaultLayout(
      title: 'StateSelectProviderScreen',
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.toString()),
            // Text(
            //   state.name,
            // ),
            // Text(
            //   state.quantity.toString(),
            // ),
            // Text(
            //   state.hasBought.toString(),
            // ),
            // Text(
            //   state.isSpicy.toString(),
            // ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleHasBought();
              },
              child: const Text('HasBought Toggle'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(selectProvider.notifier).toggleIsSpicy();
              },
              child: const Text('Spicy Toggle'),
            ),
          ],
        ),
      ),
    );
  }
}
