// #7
// By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
// What is the 10 001st prime number?

import Cocoa
import Foundation

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

func primeCount(n: Int) -> Int {
    var array: [Int] = [2]
    var i = 3
    while array.count < n {
        if isPrime(Float(i)) {
            array.append(i)
        }
        i += 2
    }
    println(array)
    return array[array.endIndex - 1]
}

primeCount(10001)

// 104743