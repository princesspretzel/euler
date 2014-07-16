// #9
// A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
// a^2 + b^2 = c^2
// For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
// There exists exactly one Pythagorean triplet for which a + b + c = 1000.
// Find the product abc.

import Cocoa
import Foundation

extension Float {
    func __conversion() -> UInt8 { return UInt8(self) }
}

func pyth() -> Float {
    var answer: Float = 0
    var b = 1
    while answer == 0 {
        var bFloat = Float(b)
        var bsq = bFloat * bFloat
        for a in 1...b {
            var aFloat = Float(a)
            var asq = aFloat * aFloat
            var csq = asq + bsq
            var c = sqrt(csq)
            println(aFloat + bFloat + c)
            if (aFloat + bFloat + c) == 1000 {
                answer = aFloat * bFloat * c
            }
        }
        b++
    }
    return answer
}

pyth()

//31875000