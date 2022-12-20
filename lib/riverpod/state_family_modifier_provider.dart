import 'package:flutter_riverpod/flutter_riverpod.dart';
// .family<A, B> (ref, data)
// A: return type.
// B: data type.
// Provider 를 생성을 할 때, 생성하는 순간에 어떠한 변수를 입력하여
// 내부 로직을 바꾸어야 할 떄 사용 한다.

final familyModifierProvider = FutureProvider.family<List<int>, int>(
  (ref, data) async {
    await Future.delayed(
      const Duration(
        seconds: 2,
      ),
    );

    return List.generate(5, (index) => index * data);
  },
);
