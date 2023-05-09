# Stack

## Stack이란?
스택이란 나중에 입력된 것이 먼저 출력되는 LIFO(Last In First Out)데이터 구조를 나타낸다.<br>
접시를 쌓아올린 모습과 같으며 가장 맨 위에 있는 접시, 즉 가장 마지막에 쌓은 접시를 먼저 꺼내 사용한다.

## Stack 구현
- push(element) : Stack에 요소 추가
- pop() : 가장 마지막 요소를 꺼내서 반환한 뒤 삭제
- peek() : 가장 마지막 요소를 꺼내어 반환 (삭제 X, 반환한 뒤 다시 돌려 놓음)
- isEmpty() : 스택이 비었는지 확인(비었으면 true, 아니면 false)
- count 프로퍼티 : 스택에 포함된 요소의 수를 반환

## 스택 확장하기
익스텐션을 통해 스택의 기능을 확장하기
### CustomStringConvertible, CustomDebugStringConvertible
타입 값을 print할때나 debug print를 출력할 때 복잡하지 않게 원하는 형식으로 출력할 수 있도록 도와줌

### ExpressibleByArrayLiteral
초기화 시 [ ]기호를 통해 ArrayLiteral로 여러 요소를 추가하거나 빈 요소를 초기화할 수 있다.

### IteratorProtocol, Sequence
for-in 루프에서 스택을 사용할 수 있도록해준다.<br>
Sequence프로토콜을 채택해야 for문에서 사용 가능함. Array도 Sequence프로토콜을 채택하고 있음<br>
Sequence프로토콜을 구현하기 위해서는 IteratorProtocol 프로토콜  채택한 Iterator 가 필요하다. 이는 컬렉션의 요소를 반환하는 반복기를 반환한다.
