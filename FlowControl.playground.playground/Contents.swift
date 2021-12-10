import UIKit

// ------ While Loop

// 조건에 만족할때까지 반복 구동
//while 조건 {
//    code ...
//}
//
//print("while")
//var i  = 0
//while i < 10 {
//    print(i)
//    if i == 5 {
//        break
//    }
//    i += 1
//}
//
//print("repeat")
//i = 0
//repeat{
//    print(i)
//    i += 1
//} while i < 10

//while : 조건 먼저 확인
//조건 > 코드 수행 > 조건 > 코드수행
//
//repeat : 코드 수행 먼저
//코드수행 > 조건 > 코드수행 > 조건


//--------- For Loop

//range

//let closedRange = 0...10 // 0~10
//let HalfClosedRange = 0..<10 // 0~9
//
//var sum = 0
//for i in closedRange{
//    print("---> \(i)")
//    sum += i
//}
//print("totalSum ---> \(sum)")    //closedRange 범위의 모든 수 합
//
//var sum2 = 0
//for i in HalfClosedRange{
//    print("--->\(i)")
//    sum2 += i
//}
//print("totalSum ---> \(sum2)") //HalfClosedRange 범위의 모든 수 합
//
//
//let name = "hajun"
//for _ in closedRange{
//    //사용하지 않는 constant 를 _ 로 대체 가능하다
//    print("My name is ---> \(name)")
//}
//
//// 짝수만 표시하기
//for i in closedRange{
//    if i % 2 == 0 /* I를 2로 나눴을때 나머지가 0*/ {
//        print("---> 짝수는 \(i)")
//    }
//}
//
//for i in closedRange where i % 2 == 0 {
//    print("---> 짝수는 \(i)")
//}
//
//// 3 빼고 출력
//for i in closedRange{
//    if i == 3{
//        continue   // continue 밑에 코드를 무시하고 건너뛰기
//    }
//    print("---> \(i)")
//}
//
//// for Loop 중첩 예시 구구단
//
//for i in HalfClosedRange{
//    for j in HalfClosedRange{
//        print(" 결과는? \(i) * \(j) = \(i * j)")
//    }
//}


//----- Switch

//let num = 10
//
//switch num {
//case 0:
//    print("---> 0입니다.")
//case 0...10:
//    print("---> 0부터 10사이 구간입니다.")
//case 10:
//    print("---> 10입니다.")
//default:
//    print("---> 나머지입니다.")
//}
//
//
//let sport = "soccer"
//switch sport {
//case "soccer","baseball","basketball":
//    print("--->스포츠입니다.")
//default:
//    print("--->잘 모르겠어요")
//}

let num = 22

switch num {
case _ where num % 2 == 0:
    print("--->짝수입니다.")
default:
    print("--->홀수입니다.")
     
}
//
//let location = (x: 10, y: 3)
//
//switch location {
//case(0,0):
//    print("원점이네요!")
//case(_,0):
//    print("X축이네요!")
//case(0,_):
//    print("Y축이네요!")
//default:
//    print("제 위치는 \(location)이에요!")
//}

let location = (x: 10, y: 3)

switch location {
case(0,0):
    print("원점이네요!")
case(let x, 0):
    print("X축 \(x)이네요!")
case(0, let y):
    print("Y축 \(y)이네요!")
case(let x, let y):
    print("제 위치는 \(x),\(y)")
}
