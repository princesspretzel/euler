// #1
// Multiples of 3 and 5

import Cocoa

var sum = 0

for x in 0...999 {
    if (x%3==0 || x%5==0) {
        sum += x
    }
}
sum

// 233168