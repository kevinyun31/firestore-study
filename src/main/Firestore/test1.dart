int getNum() {
  return 1;
}

void main() {
  int num = getNum();
  print("num : $num");
}

Future<int> getNum1() {
  Future<int> num = Future.delayed(Duration(seconds: 1), () => 1);
  return num;
}

Future<int> getNum2() async {
  int num = await Future.delayed(Duration(seconds: 1), () => 1);
  return num;
}

// void main() async{
//  Future<int> fNum = getNUm1();
//   fNum.then<void>((value) => print("받은 값 : $value"));

//   int num = await getNum2();
//   print("받은 값 : $num");
// }

// Stream = 나눠서 여러번 받는다
Stream<int> getNumStream1() async* {
  for (int i = 0; i < 3; i++) {
    await Future.delayed(Duration(seconds: 1)); // 1초 대기
    print("값 : $i");
    yield i; // yield = return을 여러번한다 async <- async*
  }
}

Stream<int> getNumStream2() async* {
  int i = 0;
  while (true) {
    i++;
    await Future.delayed(Duration(seconds: 1)); // 1초 대기
    print("값 : $i");
    yield i; // yield = return을 여러번한다 async <- async*
  }
}

// void main() {
//  getNumStream1().listen((event) {
//     print("받은 값 : $event");
//  });
// }
