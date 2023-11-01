NOSQL 장점
- 스키마가 없다
- 컬렉션(테이블)과 도큐먼트(행)를 저장할 수 있다
- READ가 빠르다
- 실시간 푸시를 할 수 있는 DB(비동기) - 어음을 주고 스트림이 가능하다

NOSQL 장점
- 정규화가 안되있음
- 데이터가 중복되서 저장
- 업데이트 어려움, 삭제도 어려움

<chat_room_tb>
int id;
int productId;
int sellerId;
int buyerId;

<chat_message_tb>
int id;
int chat_root_id;
int userId;
String message;

<chat_room_tb>
{
    id : 1,
    productId : 1,
    sellerId : 1,
    buyerId : 2,
    messages = [
        {id : 1, 2, "안녕"},
        {id : 2, 1, "응 반가워"},
    ];
}