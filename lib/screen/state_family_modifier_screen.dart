import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/riverpod/state_family_modifier_provider.dart';

class StateFamilyModifierScreen extends ConsumerWidget {
  const StateFamilyModifierScreen({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final state = ref.watch(familyModifierProvider(3));
    return DefaultLayout(
      title: 'StateFamilyModifierScreen',
      body: Center(
        child: state.when(
          data: (data) {
            return Text(data.toString());
          },
          error: (err, stack) {
            return Text(err.toString());
          },
          loading: () {
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
