import UIKit


// 1번 성 이름 받아서 풀네임 출력
func FullName2 (First: String, Last: String){
    print("\(First)\(Last)")
}
  FullName2(First: "Jeon", Last: "hajun")

// 2번 파라미터 이름 제거하고 풀네임 출력
func FullName (_ First: String , _ Last: String){
    print("\(First)\(Last)")
}
FullName("jeon", "hajun")
    
// 3번 성 이름 받아서 풀네임 return 하는 함수
func FullName3 (First: String , Last: String) -> String{
    let fullname = First + Last
    return fullname
}
let realfullname = FullName3(First: "jeon", Last: "hajun")
    realfullname

