import UIKit
import Darwin
//
//var greeting = "Hello, playground"
//let value =

//-------- Tuple
//
//let coordinates = (4, 6)
//
//let x = coordinates.0
//let y = coordinates.1
//
//let coordinatesNamed = (x: 2, y: 3)
//
//let X2 = coordinatesNamed.x
//let Y2 = coordinatesNamed.y
//
//let (x3, y3) = coordinatesNamed
//
//x3
//y3
//

//// ---------------- boolean
//
//let yes = true
//let no = false
//
//let qlry = 4 > 5
//
//if qlry {
//    print("참")
//}
//else{
//    print("거짓")
//}

//if qlry {
//    조건이 참인 경우 여기에다가
//}
//else{
//    그렇지 않은 경우 여기에다가
//}

let a = 5
let b = 10

if a > b {
    print("a가 크다")
}
else {
    print("b가 크다")
}


let IsJason = a == 10
let IsHajun = true

let JasonAndHajun = IsJason &&  IsHajun
let JasonAndHajun2 = IsJason || IsHajun

// && 비교값 두개 모두 참이여야 값이 true    and
// || 비교값 두개 중 하나만 참이여도 true 값이 나옴  or
//
//let greetingMessage: String
//if IsJason{
//    print("hello Jason")
//}
//else{
//    print("hello Hajun")
//}
//print("Msg: \(greetingMessage)")


//-------삼항 연산자 ***
let greetingMessage: String = IsJason ? "hello Jason" : "hello Hajun"

print("Msg: \(greetingMessage)")

//조건 ? 참일경우 : 거짓일 경우



//-------Scope
// 코드 블럭 안이 스콥 이라고 한다. 안에 설정된 변수는 스콥 안에서만 사용 가능

var hours = 50
var pay = 10000
var salary = 0

if hours > 40 {
    let ExtraHours = hours - 40
    salary += ExtraHours * pay * 2
    hours -= ExtraHours
}
salary += hours * pay

//-------Flow Control




