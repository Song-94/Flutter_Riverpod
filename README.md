# flutter_state_riverpod

# what is riverpod?
- 어디서든(widget 등) 변경을 감지(listen)할 수 있는 상태 관리 객체

# why use it?
- 어디서든 상태값에 접근 가능
- 다른 상태값과 결합하여 사용 용이
- 상태 변화에 영향을 받는 부분에 대해서만 부분 렌더링 (성능 최적화)
- 로깅 등 다른 feature와 결합하여 사용 가능

# kind of provider
## Provider
- 가장 기본적인 provider 형태
- 상태값 자체를 리턴한다.
- 단순히 특정 값을 읽기만 하고 싶은 경우.
- 비동기 처리가 필요 없는 경우.
## StateProvider
- Provider 스펙 + state 프로퍼티에 직접 직접 값 변경이 가능함
- 상태값 변경이 로직이 단순한 경우 
## StateNotifierProvider
- StateNotifier 를 리턴하는 provider
- 좀더 복잡한 상태값 변경 로직을 작성하고 싶은 경우
## FutureProvider
- HTTP 통신처럼 비동기 처리가 필요한 경우
## StreamProvider
- 리턴값이 Stream 인 것을 제외하고는 FutureProvider 과 동일
- 웹 소켓 처럼 실시간 양방향 통신이 필요한 경우
- 비동기 처리가 필요한 경우

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

# 인스턴스, 클래스 객체
- 인스턴스 ⊂ 클래스 ⊂ 객체
- https://codybuilder.com/17

