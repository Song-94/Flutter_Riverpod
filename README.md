# flutter_state_riverpod

# Stream?
- stream : 파이프 개념.
- 값, 이벤트, 객체, 컬렉션, 맵, 오류 또는 심지어 다른 스트림에서 모든 유형의 데이터가 스트림에 의해 전달 가능
- async* : 게으른 연산. 요청이 있을 때는 연산을 미루다가 함수에서 사용 시 연산함
- yield : 'return' 과 비슷하게 값을 반환해주는데 한번에 하나씩 'return' 함과 동시에 함수가 종료되지 않고 
  계속 열려있으면서 지속적으로 return 해줌.

# ConsumerStatefulWidget
- StatefulWidget 에서 사용 가능
- build 함수에 두번째 파라미터 받지 않음
- 기본적으로 'WidgetRef' 가 존재하여 'ref' 를 이용 하면 됨

# ConsumerWidget
- StatelessWidget 에서 사용 가능
- build 함수에 두번째 파라미터(WidgetRef) 를 받음
