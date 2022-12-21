import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_riverpod/layout/default_layout.dart';
import 'package:flutter_state_riverpod/riverpod/listen_provider.dart';

class ListenProviderScreen extends ConsumerStatefulWidget {
  const ListenProviderScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ListenProviderScreen> createState() =>
      _StateListenProviderScreenState();
}

class _StateListenProviderScreenState
    extends ConsumerState<ListenProviderScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    // initState 안에서는 반드시 .read 만 사용 할 것.
    super.initState();

    controller = TabController(
      length: 10,
      vsync: this,
      initialIndex: ref.read(listenProvider),
    );
  }

  // ref.listen<반환타입>
  @override
  Widget build(BuildContext context) {
    // 따로 dispose 안해줘도 됨.
    ref.listen<int>(
      listenProvider,
      (previous, next) {
        if (previous != next) {
          controller.animateTo(
            next,
          );
        }
        print('previous : $previous');
        print('next : $next');
      },
    );

    return DefaultLayout(
      title: 'StateListenProviderScreen',
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: List.generate(
          10,
          (index) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(index.toString()),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(listenProvider.notifier)
                      .update((state) => state == 10 ? 10 : state + 1);
                },
                child: Text('다음'),
              ),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(listenProvider.notifier)
                      .update((state) => state == 0 ? 0 : state - 1);
                },
                child: Text('이전'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
