//
//  String.swift
//  Add 1
//
//  Created by Kamayani on 22/12/19.
//  Copyright © 2019 Kamayani. All rights reserved.
//

import Foundation

extension String{
    static func randomNumber(length: Int) -> String{
        var result = ""
        for _ in 0..<length{
            let digit = Int.random(in: 0...9)
            result += "\(digit)"
        }
        return result
    }
// since in swift we cant take out iindividual values from string usimg index due to variable width strings
    // in this code  is the index of the string and this function takes the caharcter from the index in string and convert it to the int value if it a whole number
    func integer(at n: Int) -> Int
    {
        let index = self.index(self.startIndex, offsetBy: n)

        return self[index].wholeNumberValue ?? 0
    }
}


