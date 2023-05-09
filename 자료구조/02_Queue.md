# Queue

## Queue란?
큐란 먼저 입력된 데이터가 먼저 출력되는 FIFO(First In First Out)데이터 구조를 나타낸다.<br>
큐는 줄을 서있는 모습과 유사하다. 예를 들어 가게 웨이팅이 있어 맨앞에 줄을 선 사람이 먼저 들어가고, 새로 줄을 서는 사람은 가장 마지막에 서서 대기하게 된다.

## Queue 구현
- enqueue(element) : 큐의 맨 뒤에 새로운 요소 추가
- dequeue() : 큐의 첫번째 요소를 제거한 뒤 반환
- peek() : 큐의 첫번째 요소를 제거하지 않고 반환
- clear() : 큐 비우기 (모든 요소 삭제)
- isEmpty() : 큐가 비어있는지 확인(비었으면 true, 아니면 false)
- isFull() : 큐가 꽉 차있는지 확인 (꽉 차있으면 true를 반환하고 아니면 fasle반환)
- count 프로퍼티 : 큐의 요소 수를 반환
- capacity 프로퍼티 : 큐의 용량을 가져오거나 설정하기 위한 read/write 프로퍼티

## 큐 확장하기
### CustomStringConvertible, CustomDebugStringConvertible
타입 값을 print할때나 debug print를 출력할 때 복잡하지 않게 원하는 형식으로 출력할 수 있도록 도와줌

### ExpressibleByArrayLiteral
초기화 시 [ ]기호를 통해 ArrayLiteral로 여러 요소를 추가하거나 빈 요소를 초기화할 수 있다.

### IteratorProtocol, Sequence
for-in 루프에서 스택을 사용할 수 있도록해준다.<br>
Sequence프로토콜을 채택해야 for문에서 사용 가능함. Array도 Sequence프로토콜을 채택하고 있음<br>
Sequence프로토콜을 구현하기 위해서는 IteratorProtocol 프로토콜  채택한 Iterator 가 필요하다. 이는 컬렉션의 요소를 반환하는 반복기를 반환한다.

### MutableCollection
서브스크립트 문법을 통해 큐의 값을 설정하거나 가져올 수 있게 해준다. <br>
사용자가 인덱스 값을 접근하기 때문에 인덱스를 체크하는 메서드를 만들어줘야한다.
