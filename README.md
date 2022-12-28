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
- 가장 간단한 기본 형태의 Provider 이다.
-  Provider 는 읽기만 가능하며 값을 변경할 수 없다.
- 가장 기본적인 provider 형태
- 상태값 자체를 리턴한다.
- 단순히 특정 값을 읽기만 하고 싶은 경우.
- 비동기 처리가 필요 없는 경우.

## StateProvider
- StateNotifierProvider는 상태 뿐만 아니라 일부 로직을 함께 저장할 때 사용된다. 
- 예를 들어 다른 Provider와 결합을 하거나, 내부에서 사용할 로직을 정의할 수 있다.
- StateProvider 는 상태를 변경할 수 있는 Provider 이다. 
- 내부 상태는 state 로 접근이 가능한데, 사용하고자 하는 위젯에서 state 값을 직접 변경할 수 있다.
- StateProvider 는 상태를 변경할 수 있는 Provider 이다. 
- 내부 상태는 state 로 접근이 가능한데, 사용하고자 하는 위젯에서 state 값을 직접 변경할 수 있다.
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
- yield : 'return' 과 비슷하게 값을 반환해주는데 한번에 하나씩 'return' 함과 동시에 함수가 종료되지 않고 계속 열려있으면서 지속적으로 return 해줌.

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

# ref 를 사용해서 프로바이더와 상호작용하기

## ref.watch

- 프로바이더의 값을 취득하고 변화를 구독합니다. 값의 변경이 발생하면, 위젯(widget)을 다시 빌드하거나 값을 구독(subscribed)하고 있는 위치에 상태 값을 전달 및
  제공합니다.
- 반응형으로 Provider 의 값이 변경되면 자체적으로 다시 build 된다.
- 비동기적으로 호출하거나, onTab, initState 등의 생명주기에서는 사용을 하면 안된다.
- 다른 Provider 와 결합할 때 아주 유용하게 쓰인다!

## ref.listen

- 프로바이더의 상태 값을 구독하거나 상태값이 변했을때 어떠한 행위를 취해야할 경우 사용합니다.
- Provider 의 값이 변경되면 값을 읽는 것이 아니라 정의한 함수를 실행한다.
- ref.watch 와 마찬가지로 build 안이나 Provider 안에서 사용되어야 한다.
- SnackBar 나 Dialog 를 처리하는데 유용하다!

## ref.read

- 프로바이더의 상태값을 취득합니다. 이벤트 콜백함수에 사용하기 유용한데 예를들어 버튼의 onPressed 콜백 함수에서 프로바이더의 필요한 상태값을 얻기위해서 사용할 수
  있습니다.
- Provider 의 값을 읽어오기만 한다. 값이 변경되어도 별다른 동작을 하지 않는다.
- 특별한 경우 (initState, onPressed 1회성 함수, etc..) 가 아니면 사용을 하지 않는 것 같다

## 노트

- 기능을 구현할때는 가급적 ref.read 또는 ref.listen 보다 ref.watch 사용을 권장합니다.
- ref.watch 을 사용하게되면 reactive(리엑티브)와 declarative(선언형)에 가까워 지고 애플리케이션을 더 유지보수 하기 편리하게 만들어 줍니다.
- ref.watch 를 사용하는 것을 권장.
- ref.read 를 build 메소드 내에서 사용하지 말라고 권장.
- build 수 감소를 위해 ref.read 를 사용하는 경우, ref.watch 를 사용해도 똑같은 효과를 얻을 수 있다고 한다.

## site
1. RiverPod Details.
- https://velog.io/@leeeeeoy/Flutter-Riverpod-%EC%82%AC%EC%9A%A9%ED%95%B4%EB%B3%B4%EA%B8%B0-1
