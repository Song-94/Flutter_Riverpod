import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/riverpod/future_provider.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final AsyncValue<List<int>> state = ref.watch(multiplesFutureProvider);

    return DefaultLayout(
      title: 'StateFutureProviderScreen',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          state.when(
            data: (data) {
              return Text(
                data.toString(),
                textAlign: TextAlign.center,
              );
            }, // 완료 상태
            error: (err, stack) {
              return Text(
                err.toString(),
                textAlign: TextAlign.center,
              );
            }, // 에러 발생 상태
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }, // 로딩 상태
          ),
        ],
      ),
    );
  }
}
