import 'package:flutter_riverpod/flutter_riverpod.dart';

// autoDispose : 캐싱 기능을 지원하는 다른 프로바이더들과는 달리 캐싱 기능을 지원 하지 않음
// => 메모리 확보를 위해.

final autoDisposeModifierProvider = FutureProvider.autoDispose<List<int>>(
  (ref) async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );

    return [1, 2, 3, 4, 5];
  },
);
