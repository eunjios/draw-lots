import UIKit

// N: 총 참여 인원
// chooseNum: 당첨 인원
let N = 6
let chooseNum = 2

// 크기가 N이고, 0의 값을 가지는 배열 생성
var arr = [Int](repeating: 0, count: N)

// 0부터 (N-1) 사이의 값을 가지는 난수 생성
var randomNum = Int(arc4random_uniform(UInt32(N)))

// 당첨 인원 수만큼 0 --> 1 로 바꿈
// 당첨 인원 만큼 반복해도 난수가 겹칠 경우 1의 개수가 당첨 인원보다 작아질 수 있음
// 따라서 while 문으로 새로운 randomNum 지정
for _ in 0..<chooseNum {
    while arr[randomNum] == 1 {
        randomNum = Int(arc4random_uniform(UInt32(N)))
    }
    arr[randomNum] = 1
}

// 배열 arr 확인
print(arr)

// 1/0 을 당첨/통과로 출력
for i in 0...(N-1) {
    if arr[i] == 1 {
        print("당첨")
    } else {
        print("통과")
    }
}
