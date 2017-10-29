//
//  ViewController.swift
//  strangeString
//
//  Created by redmin on 2017. 10. 29..
//
//

/*
문자열 s에 각 단어의 짝수번째 인덱스 문자는 대문자로, 홀수번째 인덱스 문자는 소문자로 바꾼 문자열을 리턴하도록 함수를 완성하세요.
예를 들어 s가 "try hello world"라면 첫 번째 단어는 "TrY", 두 번째 단어는 "HeLlO", 세 번째 단어는 "WoRlD"로 바꿔 "TrY HeLlO WoRlD"를 리턴하면 됩니다.

주의 문자열 전체의 짝/홀수 인덱스가 아니라, 단어(공백을 기준)별로 짝/홀수 인덱스를 판단합니다.toWeirdCase함수는 문자열 s를 매개변수로 입력받습니다.
문자열 s에 각 단어의 짝수번째 인덱스 문자는 대문자로, 홀수번째 인덱스 문자는 소문자로 바꾼 문자열을 리턴하도록 함수를 완성하세요.
예를 들어 s가 "try hello world"라면 첫 번째 단어는 "TrY", 두 번째 단어는 "HeLlO", 세 번째 단어는 "WoRlD"로 바꿔 "TrY HeLlO WoRlD"를 리턴하면 됩니다.

주의 문자열 전체의 짝/홀수 인덱스가 아니라, 단어(공백을 기준)별로 짝/홀수 인덱스를 판단합니다.*/


import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.convertString(s: "TRY hello world")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func convertString(s:String) {
        var resultString = ""
        let stringArr = s.characters.split{$0 == " "}.map(String.init)
        
        for string in stringArr {
            
            for value in 0..<string.characters.count {
                
                let index = string.index(string.startIndex, offsetBy:value)
                var ss:String = String(string[index])
                if (value%2 == 0){
                    ss = ss.uppercased()
                } else {
                    ss = ss.lowercased()
                }
                resultString += ss
            }
            resultString += " "
        }
        
        print("\(s) -> \(resultString)")
        
    }

}

