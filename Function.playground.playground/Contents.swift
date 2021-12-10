import UIKit

func Myname() {
    print("---> hajun")
}
Myname()
 
 // param 1개
 // 숫자를 받아서 10을 곱해서 출력한다

//func printMultipleOfTen(value: Int){
//    print("\(value) * 10 = \(value * 10)")
//}
//printMultipleOfTen(value: 5)
//
//// param 2개
//// 물건 값과 갯수를 받아서 전체 금액을 출력하는 함수
//
//func TotalPrice (many: Int, Much: Int) {
//    print("물건의 개수는 \(many)이고 , 가격은\(Much)이며 , 총액은 \(many * Much) 입니다")
//}
//TotalPrice(many: 5, Much: 1000)


//파라미터 이름을 안적어주려고 할때 , _ 사용
//func TotalPriceWithDefault (many: Int, Much: Int = 1500) {
//   print("총액은 \(many * Much) 입니다")
//}
//
//TotalPriceWithDefault(many: 2)
//TotalPriceWithDefault(many: 52)
//TotalPriceWithDefault(many: 51)
//TotalPriceWithDefault(many:   51)


//func totalprice(price: Int, count: Int) -> Int {
//    let totalprice = price * count
//    return totalprice
//}
//
//let calculatorprice = totalprice(price: 100000, count: 22)
//calculatorprice


// ----> function overload = 같은 함수이지만 다양하게 표현하는 것
//
//func printTotalPrice(price: Int, count: Int){
//    print("totalPrice ==> \(price * count)")
//}
//
//func printTotalPrice(price: Double, count: Double){
//    print("totalPrice ==> \(price * count)")
//}
//
//func printTotalPrice(가격: Double, 갯수: Double){
//    print("totalPrice ==> \(가격 * 갯수)")
//}


//------In-out paramter 파라미터가 애초에 constant 라서 수정이 불가능 하므로 inout 사용하여 copyin copyout 해야함
//
//var value = 3
//func incrementAndPrint(_ value: inout Int){
//    value += 1
//    print(value)
//}
//incrementAndPrint(&value)


// Fucntion as a param 파라미터 안에 인자로 파라미터 넘기기

func add(_ a: Int, _ b: Int) -> Int{
    return a + b
}

func subtrack(_ a: Int, _ b: Int) -> Int{
    return a - b
}

var function = add
function(4,2)
function = subtrack
function(5,3)

func printResult(_ function:(Int,Int)-> Int, _ a: Int, _ b: Int){
    let result = function(a,b)
    print(result)
}

printResult(add, 10 , 5)
printResult(subtrack, 50 , 23)


// ------ Optional
 
var carName: String? = "audi"
carName = nil
carName = "탱크"

//간단한 과제
// 최애하는 축구선수이름을 담는 변수를 작성해주세요.
var BestPlayer: String? = "Mason Mount"
let Num = Int("10")   //int optional

// optional 고급 기능 4가지


//Forced unrapping  억지로 박스 까기
//print(carName!)

//Optional binding(if let) 부드럽게 박스 까기 1

//if let unrappedCarName = carName{
//    print(unrappedCarName)
//}else{
//    print("carName 없다.")
//}
//---------------------------------------------
//carName = nil
//
//if let unrappedCarName = carName{
//    print(unrappedCarName)
//}else{
//    print("carName 없다.")
//}
//func printParsedInt(from: String) {
//    if let ParsedInt = Int(from){
//
//    }else{
//        print("Int 로 컨버팅 안돼 !! ")
//    }
//}
//printParsedInt(from: "100")
//printParsedInt(from: "Hello")

//Optional binding(guard) 부드럽게 박스 까기 2.  ** 복잡성을 줄이기 위해서
//func printParsedInt(from: String) {
//
//    guard let ParsedInt = Int(from) else {
//        print("컨버팅 안돼")
//        return
//    }
//
//    print(ParsedInt)
//}
//printParsedInt(from: "100")
//printParsedInt(from: "Hello")

//Nil coalescing 박스를 까봤더니, 값이 없으면 디폴트 값을 주기
//carName = "benz"
//let MyCarName: String = carName ?? "audi"   // carName 이 nil 이면 마이카네임에 아우디를 넣어줘라


//Optional 도전 과제
//1번 최애 음식이름 담는 변수 작성(String?)
let My1pickFood: String? = "Chicken"
//2번 옵셔널 바인딩을 이용해 값을 확인해보기
if let FoodName = My1pickFood{
    print(FoodName)
}else{
    print("아니야 다른 음식이야!")
}
//3번 닉네임을 받아서 출력하는 함수 만들기 조건: 입력파라미터는 String?

func printNickName(name: String?){
    guard let nickname = name else{
       print("닉네임 없음")
        return
    }
    print(nickname)
}

printNickName(name: nil)
