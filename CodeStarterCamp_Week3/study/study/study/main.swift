//
//  main.swift
//  study
//
//  Created by JAEHYEON on 2022/05/03.
//

import Foundation



class Person {
    var name: String
    var height: Int
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}

struct Person2 {
    var name: String
    var height: Int
    var buget: Int?
    
    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }
}


let jay: Person = Person(name: "Jay", height: 177)
print("jay.name1  : \(jay.name)")
dump("jay.name1  : \(jay)")
let jjay = jay
print("jjay.name1 : \(jjay.name)")
dump("jjay.name1  : \(jay)")
jjay.name = "째현"
print("jjay.name2 : \(jjay.name)")
print("jay.name2  : \(jay.name)")
dump("jjay.name2  : \(jay)")


let jae: Person2 = Person2(name: "재현", height: 176)

func address(of object: UnsafeRawPointer) -> String {
    let address = Int(bitPattern: object)
    
    return String(format: "%p", address)
}

var a = [1,2,3]
var b = a
b = [1,2,3,4]

print(address(of: a))
print(address(of: b))

print("jay  : \(Unmanaged.passUnretained(jay).toOpaque())")
print("jjay : \(Unmanaged.passUnretained(jjay).toOpaque())")
print("jay  : \(Unmanaged.passUnretained(jay).toOpaque())")


class Phone {
    var 이름: String
    var 용량: Int
    var 가격: Int
    var 크기: Float
    
    convenience init(이름: String, 용량: Int, 가격: Int, 크기: Float) {
        self.init(크기: 크기)
        self.이름 = 이름
        self.용량 = 용량
        self.가격 = 가격
    }
    
    init(크기: Float) {
        self.크기 = 크기
    }
}
