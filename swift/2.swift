// #2
// Sum of even Fibonacci numbers

import Cocoa

extension Array {
    var lastObject: T {
    return self[endIndex - 1]
    }
}

func evensum(num: Int) -> Int {
    var array = [1, 2];
    var first = 1;
    var second = 2;
    var newNum = num;
    while array.lastObject < newNum {
        var nextNum = first + second;
        array.append(nextNum);
        first = second;
        second = array.lastObject;
    }
    array.removeLast();
    var sum = 0;
    for i in array {
        if i % 2 == 0 {
            sum += i;
        }
    }
    return sum;
}

evensum(4000000);

// 4613732