//1차 세미나 플레이그라운드 자료3


//심장 클래스
class Heart {
    
    //심장 클래스의 저장 프로퍼티
    var blood = "피"
    
    //심장 클래스의 메소드
    func heartBeat() {
        print("두근두근")
    }
}

//동물 클래스
class Animal {
    
    //동물 클래스의 저장 프로퍼티
    //var heart = Heart()
    
    //heart 변수를 옵셔널 타입으로 선언하고 객체화하지 않은 경우
    //var heart: Heart?
    
    //heart 변수를 옵셔널 타입으로 선언하고 객체화한 경우
    var heart: Heart? = Heart()
    
    //동물 클래스의 메소드
    func eat(_ food: String) {
        print("\(food)를 맛있게 먹는다.")
    }
    
    //동물 클래스의 메소드
    func soundsOut() {
        print("무언가 소리를 낸다.")
    }
}

//개 클래스 : 동물 클래스를 상속받음
class Dog: Animal {
    
    //동물 클래스의 soundsOut() 메소드를 오버라이딩하여 재정의
    override func soundsOut() {
        print("멍멍")
    }
}

var dog = Dog()

dog.eat("고기")
dog.soundsOut()
print(dog.heart?.blood)
dog.heart?.heartBeat()
