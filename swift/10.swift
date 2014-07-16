// #10
// The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
// Find the sum of all the primes below two million.

import Cocoa
import Foundation

//extension for refactoring (doesn't work yet)
//extension Array {
//    func __last(array: Array) -> Int {
//        var array = [Array]();
//        var idx = 0;
//            while (idx < array.endIndex-1) {
//                idx++;
//                array.append(idx);
//            }
//        return array.removeLast();
//    }
//}

func isPrime(n: Float) -> Bool {
    var nFloat = Float(n)
    var prime = true
    var i = Float(2)
    while i <= sqrt(n) && prime == true {
        if n % i == 0 {
            prime = false
        } else {
            i++
        }
    }
    return prime
}

func primeSum(num: Int) -> Int {
    var array: [Int] = [2]
    var i = 3
    while array[(array.endIndex-1)] < num {
        println(array[(array.endIndex-1)])
        if isPrime(Float(i)) {
            array.append(i)
        }
        i += 2
    }
    array.removeAtIndex(array.count - 1)
    return array.reduce(0,+)
}

primeSum(2000000)

// 142913828922
