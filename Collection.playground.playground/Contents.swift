import UIKit

//-----Array.  순서 기반으로 탐색

//표헌방식
var evenNumbers: [Int] = [2,4,6,8]

let evenNumbers2: Array<Int> = [2,4,6,8]

//추가 하는 방법
evenNumbers.append(10)
evenNumbers += [12, 14 ,16]
evenNumbers.append(contentsOf: [18, 20])

let isEmpty = evenNumbers.isEmpty //boolean. ******* 알아놓기

evenNumbers.count //Element 개수 파악  ******* 알아놓기

print(evenNumbers.first)

let firstItem = evenNumbers.first
//optional 인 이유 : 값이 있을수도 있고 없을수도 있기때문에

//바인딩 이용
if let firstElement = evenNumbers.first{
    print("\(firstElement)")
}
else{
    print("아무것도 없어")
}
//최소 최대 가져올수 있음
evenNumbers.min()
evenNumbers.max()

evenNumbers[1]// 몇번째 아이템인지  ********* 알아놓기



// ----> range 이용해서 인덱스 값가져올수 있음
let fisrtThree = evenNumbers[0...3]

// 안에 인덱스 값 있는지 확인
evenNumbers.contains(3)
evenNumbers.contains(4)
//새로운값 넣기 가능
evenNumbers.insert(0, at: 0)

//삭제
//evenNumbers.removeAll()
//evenNumbers = []
//evenNumbers.remove(at: 0) // 0번째꺼 삭제

// 인덱스 값 변경
evenNumbers[0] = -2
evenNumbers[0...2] = [-2, 0, 2]
evenNumbers
// swap
evenNumbers.swapAt(0, 10)
evenNumbers

//for num in evenNumbers{
//    print(num)
//}

// 통이 있는 아이템들을 하나씩 순서대로 가져오는 방법   ********* 알아놓기
for (index, num) in evenNumbers.enumerated(){
    print("index = \(index), num = \(num)")
}


evenNumbers.dropFirst(3) // 실제 원래 배열에 영향 주지않고 임시로 결과 보여줌
evenNumbers.dropLast(3)

// 앞에 3개만 가져오기
evenNumbers.prefix(3)
//마지막 3개 가져오기
evenNumbers.suffix(3)




//-------Dictionary

// Array와 다르게 순서가 없고 key - value 로 구성되어져 있음
// key 는 유일해야함 중복 불가

