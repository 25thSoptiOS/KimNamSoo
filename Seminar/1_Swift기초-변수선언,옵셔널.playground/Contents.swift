//보충 세미나 플레이그라운드 자료 1

/*
 
 *************************가이드라인에 따른 기본 스위프트 4.0 명명규칙***************************
 
 
 - 변수, 상수, 함수, 메서드, 타입 등의 이름은 유니코드에서 지원하는 어떤 문자(한글, 한자, 영문, 숫자 , 이모티콘 등등)라도 사용할 수 있습니다. 다만 다음과 같은 예외의 경우는 사용불가능합니다
 * 스위프트에서 미리 사용하고 있는 예약어 또는 키워드(var, let 등등)는 식별자로 사용 불가능합니다
 * 해당 코드 범위 내에서 미리 사용되고 기존의 이름과 동일한 이름
 * 연산자로 사용될 수 있는 기호(+,-,*,/)
 * 숫자로 시작하는 이름
 * 공백이 포함된 이름
 - 함수, 메서드, 인스턴스 이름은 첫 글자를 소문자로 사용하는 소문자 카멜케이스(Lower CamelCase)를 사용합니다.
 
 - 클래스, 구조체, 익스텐션, 프로토콜, 열거형 이름은 타입의 이름이기 때문에 첫 글자를 대문자로 사용하는 대문자 카멜케이스(Upper Camel Case) 를 사용합니다.
 - 대소문자를 구별합니다. Var, var는 다르게 인식합니다
 
 */


//진수에 따른 정수 표현법
//2진수 : 접두어 0b
//8진수 : 접두어 0o
//16진수 : 접두어 0x
//Int --------------------------------------------------------
//10진수 표현
let decimalInteger : Int = 28
//2진수 표현
let binaryInteger : Int = 0b11100
//8진수 표현
let octalInteger : Int = 0o34
//16진수 표현
let hexadecimalInteger : Int = 0x1C

//Bool -------------------------------------------------------
let boolean: Bool = true
let iLikeSoccer : Bool = true
let falseValue : Bool = false

//Float, Double ----------------------------------------------
var floatValue : Float = 1234567890.1
let doubleValue : Double = 1234567890.1
//float는 double 보다 표현범위가 적기 때문에 출력결과와 같이 표현됩니다.
print("floatValue : \(floatValue) doubleValue : \(doubleValue)")

floatValue = 123456.1
print(floatValue)


//스위프트는 유니코드에서 지원하는 모든 언어 및 특수기호 사용 가능
//character ---------------------------------
let alphabetA: Character = "A"
print(alphabetA)

let heart: Character = "♡"
print(heart)

let 세종대왕 : Character = "ㅇ"
print(세종대왕)

//String ------------------------------------

let ios23rd : String = "ios"
print(ios23rd)

//이니셜라이저를 사용하여 빈 문자열 생성가능
var introduce : String = String()
//append 메서드 사용 가능
introduce.append("DoIT SOPT")
introduce = introduce + " " + ios23rd

print(introduce)

print("ios character count : \(ios23rd.count)")
print("빈 문자열인지 확인 : \(ios23rd.isEmpty)")

let unicodeScalarValue: String = "\u{2665}"
print("스칼라값을 이용한 유니코드 확인 : \(unicodeScalarValue)")

let hello : String = "Hello"
let name : String = "Seungsoo"
var greeting: String = hello + " " + name + "!"
print(greeting)

greeting = hello
greeting += " "
greeting += name
greeting += "!"

//연산자를 통한 문자열 비교
var isSameString: Bool = false
isSameString = hello == "Hello"
print(isSameString)

isSameString = name == "Seungsoo"
print(isSameString)

isSameString = name == hello
print(isSameString)

//메서드를 통한 접두어, 접미어 확인
//hasPrefix 초기화
var hasPrefix: Bool = false
hello.hasPrefix("He")
print(hasPrefix)

//메서드를 통한 대소문자 변환
var convertedString : String = ""
convertedString = hello.uppercased()
print(convertedString)

convertedString = name.lowercased()
print(convertedString)

//프로퍼티를 통한 빈 문자열 확인
var isEmptyString : Bool = false
greeting = ""
isEmptyString = greeting.isEmpty//true
print(isEmptyString)

/* 특수문자
 
 - \n : 줄바꿈문자
 - \\ : 문자열 내에서 백슬래시를 표현하고자 할 떄 사용
 - \" : 문자열 내에서 큰따옴표를 표현하고자 할 때 사용
 - \t : 탭 문자. 키보드 탭키를 눌렀을 떄와 같은효과
 - \O : 문자열이 끝났음을 알리는 null 문자
 */

//Any, AnyObject와 nil
//Any로 선언된 변수에는 문자열, 정수, 실수 등 어떤타입의 값이라도 할당 가능합니다
var someVar : Any = "아무거나 들어감"
someVar = 27
someVar = 27.3


import UIKit

//변수 선언
var str = "Hello, Swift" //String
var num1 = 1             //Int
var num2 = 0.5           //Double
var num3 = Float(num2)   //Float
var label1 = UILabel()   //UILabel
var label2 : UILabel?    //UILabel?



var str2 : String

//for( ; ; ;) 구문(이제 사용이 불가합니다.)
//for ~ in 구문

for item in 1..<5 {
    print(num1)
    num1 += item
}

num1 = 1

for item in 1...4 {
    print(num1)
    num1 += item
}



var array = ["안녕", "SOPT", "iOS"]
for item in array {
    print(item)
}

//문자열 템플릿
//문자열 템플릿(보간법) : '\(변수명)' 와 같은 방식으로 표현되며 여러 타입의 변수의 값을 문장으로 표현할 수 있습니다

let hi = "안녕하세요"
let myAgeIs: String = "제 나이는"
let numAge = 26
var introduce2 = "\(hi), \(myAgeIs) \(numAge)입니다."
print(introduce2)

introduce2.append(" 여러분")
print(introduce2 + " 반갑습니다~")

 

//집단 자료형
//선언
var iOSArray = [String]()
var obArray = ["김예은", "김하늘", "박다영", "송원호", "심지원"]
var ybArray: [String] = ["구민영", "김보윤", "김지민", "모상일", "박소현"]
obArray.append("양어진")
iOSArray += obArray
iOSArray += ybArray

var obTuple = ("이승환", 25, 100.0)
var ybTuple: (name: String, age: Int, score: Double) = ("서명윤", 24, 100.0)
print(obTuple)
print(obTuple.0)
print(ybTuple.name)

var obDic = ["이충신":27, "정승욱":27, "조수민":23, "최효진":24]
var ybDic: [String:Int] = ["성다연":22, "신승윤":21, "이승언":25]
print(ybDic["성다연"])
print(ybDic["aaa"])
// 추가
obDic["홍정민"] = 26
ybDic.updateValue(22, forKey: "조민지")

var ybSet: Set<String> = ["조윤영", "조중현", "진지민", "최인탁"]

/*
 열거형 : 열거형은 배열이나 딕셔너리 같은 타입과 다르게 프로그래머가 정의해준 항목 값 이외에는 추가/수정이 불가능합니다. 때문에  정해진 값만 열거형의 값으로 속할 수 있습니다. C언어는 열거형의 각 항목 값이 정수형으로 기본지정되지만 스위프트 열거형에서는 각 항목이 그 자체의 고유값이 될 수 있음.
 
 - 제한된 선택지를 주고싶을때
 - 정해진값 외에는 입력받고 싶지 않을 때
 - 예상된 입력 값이 한정되어 있을 때
 
 - 열거형으로 묶을 수 있는 항목
 a.무선 통신방식 :  Wifi, 블루투스, LTE, 3G
 b.학생 :  초등학생, 중학생, 고등학생, 대학생, 대학원생
 c.지역 : 강원도, 경기도, 경상도, 전라도, 제주도, 충청도
 */

enum School: String{
    
    case primary
    case elementary
    case middle
    case high
    case college = "솝트대학교"
    
}

let hight:School = .college

//연관값을 가지는 열거형
/*  공용체 형태, 연관값은 각 항목 옆에 소괄호로 묶어 표현 가능*/

enum SOPT{
    
    case planning(Learder : String)
    case design(Leader: String)
    case ios(Leader:String, member:[String])
    case android(Learder : String)
    case server(Learder : String)
    
}

var member = iOSArray

var doIT_Sopt_ios: SOPT = .ios(Leader: "이승수", member: member)
print(doIT_Sopt_ios)


//옵셔널
//옵셔널을 반환하는 경우

// null = nil

var opInt1 = Int("123")
var opInt2 = Int("안녕하세요.")

//옵셔널 강제 해제
let opForced1 = opInt1!
//let opForced2 = opInt2!


//옵셔널 비강제 해제 - 옵셔널 바인딩
print("\(opInt1)")

if let item = opInt2 {
    print("\(item)")
} else {
    print("실패했습니다.")
}
//
//guard let item = opInt2 {
//    print("\(item)")
//}
//
//??
