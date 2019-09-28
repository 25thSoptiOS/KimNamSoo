//보충 세미나 플레이그라운드 자료 2


//1. 함수 기본

/*
 
 **. 스위프트에서 함수는 일급객체이기 때문에 하나의 값처럼 사용할 수 있습니다
 여기서 일급객체란 다음의 조건을 충족합니다
 
 - 전달인자(Argument)로 전달할 수 있다.
 - 동적 프로퍼티 할당이 가능합니다.
 - 변수나 데이터 구조 안에 담을 수 있습니다.
 - 반환 값으로 사용할 수 있습니다.
 - 할당할 때 사용된 이름과 관계없이 고유한 객체로 구별할 수 있습니다.
 
 기존의 언어에서는(C,C++ 등) 정수, 실수등은 거의 모든 언어에서 일급객체의 조건을 갖출수 있지만 대부분의 함수는 그렇지 않습니다.
 하지만 스위프트의 함수는 이 조건을 모두 충족하기에 함수를 일급객체로 취급합니다. 즉 함수자체가 하나의 타입으로서 매개변수가 될 수 있습니다.
 
 
 함수는 재정의(오버라이드)와 중복 정의(오버로드)를 모두 지원합니다. 따라서 매개변수 타입이 다르면
 같은 이름의 함수를 여러개 만들 수 있고, 매개변수의 개수가 달라도 같은 이름의 함수를 만들 수 있습니다.
 
 */

//Swift 3.0부터 첫번째 매개변수명 자동 생략이 없어졌습니다.
func soundsOut(_ sound: String) {
    print(sound)
}

soundsOut("멍멍")

func soundsOut(sound: String, repeatedTime time: Int) {
    for _ in 0..<time {
        print(sound)
    }
}

soundsOut(sound: "야옹", repeatedTime: 3)


//2. 함수 반환 타입
func triple(_ base: Int) -> Int {
    return base * 3
}

func tupleToDic(_ partList: [String]) -> [String: Int] {
    var myDic = [String : Int]()
    for (i, part) in partList.enumerated() {
        myDic.updateValue(i, forKey: part)
    }
    return myDic
}

print(triple(2))
print(tupleToDic(["iOS", "안드로이드", "서버"]))


//3. 함수를 인자로 넣는 방식 및 클로저

func dogSoundsOut() {
    print("멍멍")
}

func catSoundsOut() {
    print("야옹")
}

func triple2(_ base: Int) -> Int {
    return base * 3
}

func excute(myfuncs: [() -> Void]) {
    for myfunc in myfuncs {
        myfunc()
    }
}

func excute(myfunc: () -> Void, repeatTime: Int) {
    for _ in 0...repeatTime {
        myfunc()
    }
}

excute(myfuncs: [dogSoundsOut, catSoundsOut])
excute(myfunc: dogSoundsOut, repeatTime: triple2(1))

func thankYou() {
    print("감사합니다.")
}

func presentForYou(from: String, item: String, completionHandler: (String)->Void) {
    print("\(from)에게 \(item)을 선물했다.")
    completionHandler("!!!")
}

func presentForYou(from: String, item: String, completionHandler: (() -> Void)? = nil) {
    print("\(from)에게 \(item)을 선물했다.")
    if completionHandler != nil {
        completionHandler!()
    }
}

// escsping closure는 closure을 인자로 받는 함수에서, 해당 closure가 함수가 반환된 이후에 수행되는 경우를 말한다.
func presentForYou2(from: String, item: String, completionHandler: @escaping () -> Void) {
    print("\(from)에게 \(item)을 선물했다.")
    completionHandler()
}



presentForYou(from: "효진", item: "기프티콘")
presentForYou(from: "승욱", item: "네이버사원증") {(string) in
    print(string)
    print("이곳이 그린팩토리인가?!")
}
presentForYou(from: "승환", item: "에어팟", completionHandler: thankYou)
