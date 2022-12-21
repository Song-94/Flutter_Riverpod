import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/riverpod/providers.dart';
import 'package:flutter_state_riverpod/riverpod/state_notifier_provider.dart';

class ProvidersScreen extends ConsumerWidget {
  const ProvidersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(filteredShoppingListProvider);

    return DefaultLayout(
      title: 'ProvidersScreen',
      actions: [
        PopupMenuButton<FilterState>(
          itemBuilder: (_) {
            return FilterState.values
                .map(
                  (e) => PopupMenuItem(
                    value: e,
                    child: Text(
                      e.name,
                    ),
                  ),
                )
                .toList();
          },
          onSelected: (value) {
            ref.read(filterProvider.notifier).update((state) => value);
          },
        ),
      ],
      body: ListView(
        children: state
            .map(
              (e) => CheckboxListTile(
                title: Text(e.name),
                value: e.hasBought,
                onChanged: (value) {
                  ref.read(shoppingListProvider.notifier).toggleHasBought(
                        name: e.name,
                      );
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
