import UIKit

var scoreDic: [String: Int] = ["hajun": 100, "james": 70, "mount": 90]


if let score = scoreDic["hajun"] {
    score
}else{
    //스코어 없음
}

scoreDic["hajun"]
scoreDic["jerry"]

//scoreDic = [:]
scoreDic.isEmpty
scoreDic.count

//기존 사용자 업데이트
scoreDic["hajun"] = 99
scoreDic

// 사용자 추가
scoreDic["werner"] = 85
scoreDic
// 사용자 삭제
scoreDic["werner"] = nil
scoreDic

// For Loop

for (name, score) in scoreDic {
    print("\(name),\(score)")
}
// 키 값만 출력
for key in scoreDic.keys {
    print(key)
}
// 밸류 값만 출력
for value in scoreDic.values {
    print(value)
}

//과제 1번 이름 , 직업 , 도시에 대해서 Dictionary 만들기
var Members: [String: String] =
              ["name": "hajun",
               "Job": "proGrammer",
               "City": "KOR"]
//2번 도시를 부산으로 업데이트 하기
Members["City"] = "Busan"
//3번 딕셔너리 받아서 이름과 도시 프린트 하는 함수 만들기
//func printNameAndCity(dic: [String: String]){
//    if let name = dic["name"],
//       let city = dic["City"]
//    {
//        print(name, city)
//    }else{
//        print("empty")
//    }
//}
//printNameAndCity(dic: Members )


func printNameAndJob(dic: [String: String]){
    if let name = dic["name"],
       let job = dic["Job"]
    {
        print(name, job)
} else {
    print("is Empty ! ")
    }
}
printNameAndJob(dic: Members)
