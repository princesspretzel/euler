// #3
// Large number prime factorization

import Cocoa

func prime_factor(num: Int) -> Int {
    var i = 2;
    var newNum = num;
    while i != (newNum/3) {
        if (newNum % i) == 0 {
            newNum = newNum / i;
            i = 2;
        }
        else {
            i++;
        }
    }
    return newNum;
}

prime_factor(600851475143)

// 6857