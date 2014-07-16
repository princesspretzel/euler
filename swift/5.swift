// #5
// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Cocoa

func smallest_multiple() -> Int {
    // primes under 20
    var first = (19 * 17 * 13 * 11 * 7 * 5 * 3 * 2)
    var answer = 0
    
    while answer == 0 {
        // It is unnecessary to multiply in the lower half since they are all encompassed by the doubles in the latter half
        for var i = 11; i <= 20; i++ {
            if first % i != 0 {
                break
            }
            if i == 20 {
                answer = first
            }
        }
        first += 9699690
    }
    return answer
}

smallest_multiple()

//232792560