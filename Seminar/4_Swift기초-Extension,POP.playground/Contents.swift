//1차 세미나 플레이그라운드 자료3

//동물 클래스
class Animal {
    
    func eat(_ food: String) {
        print("\(food)를 맛있게 먹는다.")
    }
    
    func soundsOut() {
        print("무언가 소리를 낸다.")
    }
}

//동물의 행동 명세 프로토콜
protocol AnimalAction: class {
    func soundsOut()
    func move()
}


//Animal 클래스를 상속받고 AnimalAction 프로토콜을 구현
class Dog: Animal, AnimalAction {
    
    override func soundsOut() {
        super.soundsOut()  //super는 부모 클래스를 의미합니다. 따라서 부모 클래스인 Aniaml에서 정의된 soundsOut()이 실행됩니다.
        print("멍멍")
    }
    
    func move() {
        print("네발로 종종")
    }
}

var dog = Dog()
dog.soundsOut()
dog.move()

extension Animal {
    func sleep() {
        print("Zzz...")
    }
}


//POP Programming - 프로토콜 기반 프로그래밍
extension AnimalAction {
    func yawn() {
        print("후아아암...")
    }
}

class Person: AnimalAction {
    func soundsOut() {
        print("무적 아이오에스!!!")
    }
    func move() {
        print("두발로 성큼성큼")
    }
}

//Person, Dog 클래스는 AnimalAction 프로토콜 구현
let person = Person()
dog = Dog()

person.yawn()
dog.yawn()
