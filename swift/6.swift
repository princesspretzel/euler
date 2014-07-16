// #6
// Difference between the sqaure of sum and the sum of square of the numbers 1-100

import Cocoa

func difference() -> Int {
    var diff = sum_of_squares() - square_of_sums()
    return (abs(diff))
}

func sum_of_squares() -> Int {
    var sumsq = 0;
    for var i = 1; i < 101; ++i {
        sumsq += (i * i)
    }
    return sumsq
}

func square_of_sums() -> Int {
    var sqsum = 0;
    for var i = 1; i < 101; ++i {
        sqsum += i
    }
    return sqsum * sqsum
}

difference()

// 25164150