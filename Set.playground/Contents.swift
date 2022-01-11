import UIKit


//--------Set
// 중복이 없는 유니크한 아이템을 관리할때, 순서가 중요하지 않을때 >>

var SomeSet: Set<Int> = [1,2,3,1]

SomeSet.count
SomeSet.isEmpty

SomeSet.contains(3)


SomeSet.insert(5)
SomeSet

SomeSet.remove(3)
SomeSet



//------Closure 이름이 없는 메소드(함수)

var multiplyClosure: (Int, Int) -> Int = { $0 * $1 }  //< 이렇게까지 간추려서 사용 가능 == a,b in return a * b

let result = multiplyClosure(5,2)

func operateTwoNum (a:Int, b:Int , operation: (Int, Int) -> Int) -> Int {
    let result = operation(a, b)
    return result
}

let voidClosure :() -> Void = {
    print("개어렵네 ㅋㅋ")
}
voidClosure()


//Capturing Values

var count = 0

let incrementer = {
    count += 1
}

incrementer()
incrementer()
incrementer()
incrementer()

count

//Closure 보강
//
//Closure 가 무엇인가?
//
//함수는 func 키워드를 사용해서 만듬
//함수는 어떤 기능을 수행하는 함수블록
//
//함수는 Closure의 한가지 타입이다
//
//Closure
//1. Global 함수
//2. Nested 함수
//3. Closure Expressions

//first type class

// 변수에 할당 가능 , 인자로 받을수 있음 , 리턴 가능
 
//Closure 형태
//
//{ (parameter)-> return type in
//    statements
//}

{ (parameter)-> return type in
    statements
}

